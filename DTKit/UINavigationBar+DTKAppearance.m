//
//  UINavigationBar+DTKAppearance.m
//  Nodchat
//
//  Created by Dmitry Terekhov on 2/1/16.
//  Copyright © 2016 Csaba Toth. All rights reserved.
//

#import "UINavigationBar+DTKAppearance.h"

@implementation UINavigationBar (DTKAppearance)

- (void)setupAppearanceWithBackgroundColor:(UIColor *)backgroundColor {
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]]; // Screen's title color on top
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}]; // Back button icon + title color
    [[UINavigationBar appearance] setBarTintColor:backgroundColor]; // Backgroud color
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent]; // StatusBar white text
}

@end