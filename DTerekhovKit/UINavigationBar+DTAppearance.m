//
//  UINavigationBar+DTAppearance.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UINavigationBar+DTAppearance.h"

@implementation UINavigationBar (DTAppearance)

+ (void)dt_setupAppearanceWithBackgroundColor:(UIColor *)backgroundColor {
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; // Screen's title color on top
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}]; // Back button icon + title color
    [[UINavigationBar appearance] setBarTintColor:backgroundColor]; // Backgroud color
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent]; // StatusBar white text
}

@end