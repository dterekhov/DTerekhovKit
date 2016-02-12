//
//  UINavigationBar+DTKAppearance.h
//  Nodchat
//
//  Created by Dmitry Terekhov on 2/1/16.
//  Copyright © 2016 Csaba Toth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (DTKAppearance)

/**
 *  Global displaying UI with white text and choose background color
 */
- (void)setupAppearanceWithBackgroundColor:(UIColor *)backgroundColor;

@end