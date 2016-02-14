//
//  UIView+DTPopupLabel.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UIView+DTPopupLabel.h"
#import <MBProgressHUD/MBProgressHUD.h>

static NSTimeInterval const OneLineTextDelay = 2.0f;
static NSTimeInterval const MultipleLinesTextDelay = 4.0f;

@implementation UIView (DTPopupLabel)

- (void)dt_showPopupLabelWithText:(NSString *)text {
    [self dt_showPopupLabelWithText:text multipleLines:NO delay:OneLineTextDelay];
}

- (void)dt_showPopupDetailsLabelWithText:(NSString *)text {
    [self dt_showPopupLabelWithText:text multipleLines:YES delay:MultipleLinesTextDelay];
}

- (void)dt_showPopupLabelWithText:(NSString *)text multipleLines:(BOOL)multipleLines delay:(NSTimeInterval)delay {
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