//
//  UINavigationController+SFTransition.h
//  MumMum
//
//  Created by Dmitry Terekhov on 12/8/15.
//  Copyright © 2015 Shawn Frank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (SFTransition)

- (void)sf_popViewControllerAnimated:(BOOL)animated completion:(void (^)(UIViewController *backViewController))completion;

/**
 *  Pop to viewController of a specific class
 *
 *  @param aClass   Fist specific class in navigation stack
 *  @param animated Standart pop animation
 *
 *  @return Success
 */
- (BOOL)sf_popToViewControllerOfClass:(Class)aClass animated:(BOOL)animated;

/**
 *  Push someVC with completion block
 *
 *  @param viewController someVC to push
 *  @param completion     Whatever you want to do after the push
 */
- (void)sf_pushViewController:(UIViewController *)viewController withCompletion:(void (^)(void))completion;

@end