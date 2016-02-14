//
//  UINavigationBar+DTAppearance.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (DTAppearance)

/**
 *  Global displaying UI with white text and choose background color
 */
+ (void)dt_setupAppearanceWithBackgroundColor:(UIColor *)backgroundColor;

@end