//
//  UINavigationController+SFTransition.m
//  MumMum
//
//  Created by Dmitry Terekhov on 12/8/15.
//  Copyright © 2015 Shawn Frank. All rights reserved.
//

#import "UINavigationController+SFTransition.h"

@implementation UINavigationController (SFTransition)

- (void)sf_popViewControllerAnimated:(BOOL)animated completion:(void (^)(UIViewController *backViewController))completion {
    NSInteger countVCs = self.viewControllers.count;
    UIViewController *backVC = countVCs >= 2 ? self.viewControllers[countVCs - 2] : nil;
    
    [CATransaction begin];
    [self popViewControllerAnimated:animated];
    if (completion) {
        [CATransaction setCompletionBlock:^{
            completion(backVC);
        }];
    }
    [CATransaction commit];
}

- (BOOL)sf_popToViewControllerOfClass:(Class)aClass animated:(BOOL)animated {
    for (UIViewController *vc in self.viewControllers) {
        if ([vc isKindOfClass:aClass]) {
            [self popToViewController:vc animated:animated];
            return YES;
        }
    }
    return NO;
}

- (void)sf_pushViewController:(UIViewController *)viewController withCompletion:(void (^)(void))completion {
    [CATransaction begin];
    [self pushViewController:viewController animated:YES];
    if (completion) {
        [CATransaction setCompletionBlock:completion];
    }
    [CATransaction commit];
}

@end