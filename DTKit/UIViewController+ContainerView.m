//
//  UIViewController+ContainerView.m
//  HotelsInspector
//
//  Created by Dmitry Terekhov on 29.06.15.
//  Copyright (c) 2015 Softwares. All rights reserved.
//

#import "UIViewController+ContainerView.h"

@implementation UIViewController (ContainerView)

#pragma mark - Display embedVC
- (void)lshi_displayEmbedViewController:(UIViewController *)embedViewController inContainerView:(UIView *)containerView;
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
