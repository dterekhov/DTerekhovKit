//
//  UIViewController+DTContainerView.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Parent containerVC to add custom childVCs
 */
@interface UIViewController (DTContainerView)

/**
 *  Correct insert embedVC.view in currentParentVC.containerView
 *
 *  @param embedViewController Custom child embedVC adding to current parentVC
 *  @param containerView       view belongs to parentVC in which iserting custom child embedVC
 */
- (void)dt_displayEmbedViewController:(UIViewController *)embedViewController inContainerView:(UIView *)containerView;

@end