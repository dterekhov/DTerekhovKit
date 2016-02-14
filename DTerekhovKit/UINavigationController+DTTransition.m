//
//  UINavigationController+DTTransition.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UINavigationController+DTTransition.h"

@implementation UINavigationController (DTTransition)

- (void)dt_popViewControllerAnimated:(BOOL)animated completion:(void (^)(UIViewController *backViewController))completion {
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

- (BOOL)dt_popToViewControllerOfClass:(Class)aClass animated:(BOOL)animated {
    for (UIViewController *vc in self.viewControllers) {
        if ([vc isKindOfClass:aClass]) {
            [self popToViewController:vc animated:animated];
            return YES;
        }
    }
    return NO;
}

- (void)dt_pushViewController:(UIViewController *)viewController withCompletion:(void (^)(void))completion {
    [CATransaction begin];
    [self pushViewController:viewController animated:YES];
    if (completion) {
        [CATransaction setCompletionBlock:completion];
    }
    [CATransaction commit];
}

@end