//
//  UIViewController+ContainerView.h
//  HotelsInspector
//
//  Created by Dmitry Terekhov on 29.06.15.
//  Copyright (c) 2015 Softwares. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Parent containerVC to add custom childVCs
 */
@interface UIViewController (ContainerView)

/**
 *  Correct insert embedVC.view in currentParentVC.containerView
 *
 *  @param embedViewController Custom child embedVC adding to current parentVC
 *  @param containerView       view belongs to parentVC in which iserting custom child embedVC
 */
- (void)lshi_displayEmbedViewController:(UIViewController *)embedViewController inContainerView:(UIView *)containerView;

@end
