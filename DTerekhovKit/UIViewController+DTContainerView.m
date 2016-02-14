//
//  UIViewController+DTContainerView.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UIViewController+DTContainerView.h"

@implementation UIViewController (DTContainerView)

#pragma mark - Display embedVC
- (void)dt_displayEmbedViewController:(UIViewController *)embedViewController inContainerView:(UIView *)containerView;
{
    NSAssert(embedViewController != nil, @"embedViewController can not be nil!");
    NSAssert(containerView != nil, @"containerView can not be nil!");
    
    [self hideEmbedViewController:embedViewController];
    
    [self addChildViewController:embedViewController];
    embedViewController.view.frame = CGRectMake(0, 0, containerView.frame.size.width, containerView.frame.size.height);
    [containerView addSubview:embedViewController.view];
    [embedViewController didMoveToParentViewController:self];
}

- (void)hideEmbedViewController:(UIViewController *)embedViewController
{
    [embedViewController willMoveToParentViewController:nil];
    [embedViewController.view removeFromSuperview];
    [embedViewController removeFromParentViewController];
}

@end