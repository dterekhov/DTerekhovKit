//
//  UIView+PopupLabel.m
//  HotelsInspector
//
//  Created by Dmitry Terekhov on 03.02.15.
//  Copyright (c) 2015 Softwares. All rights reserved.
//

#import "UIView+PopupLabel.h"
#import <MBProgressHUD/MBProgressHUD.h>

static NSTimeInterval const OneLineTextDelay = 2.0f;
static NSTimeInterval const MultipleLinesTextDelay = 4.0f;

@implementation UIView (PopupLabel)

- (void)showPopupLabelWithText:(NSString *)text {
    [self showPopupLabelWithText:text multipleLines:NO delay:OneLineTextDelay];
}

- (void)showPopupDetailsLabelWithText:(NSString *)text {
    [self showPopupLabelWithText:text multipleLines:YES delay:MultipleLinesTextDelay];
}

- (void)showPopupLabelWithText:(NSString *)text multipleLines:(BOOL)multipleLines delay:(NSTimeInterval)delay {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    if (multipleLines) {
        hud.detailsLabelText = text;
    } else {
        hud.labelText = text;
    }
    hud.margin = 10.f;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:delay];
}

@end
