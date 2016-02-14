//
//  UINavigationController+DTTransition.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (DTTransition)

- (void)dt_popViewControllerAnimated:(BOOL)animated completion:(void (^)(UIViewController *backViewController))completion;

/**
 *  Pop to viewController of a specific class
 *
 *  @param aClass   Fist specific class in navigation stack
 *  @param animated Standart pop animation
 *
 *  @return Success
 */
- (BOOL)dt_popToViewControllerOfClass:(Class)aClass animated:(BOOL)animated;

/**
 *  Push someVC with completion block
 *
 *  @param viewController someVC to push
 *  @param completion     Whatever you want to do after the push
 */
- (void)dt_pushViewController:(UIViewController *)viewController withCompletion:(void (^)(void))completion;

@end