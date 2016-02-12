//
//  UIView+PopupLabel.h
//  HotelsInspector
//
//  Created by Dmitry Terekhov on 03.02.15.
//  Copyright (c) 2015 Softwares. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Show popup message over current view
 */
@interface UIView (PopupLabel)

/**
 *  Show popup message with auto hide. Default time interval is 2 sec.
 *
 *  @param text Text in popup message
 */
- (void)showPopupLabelWithText:(NSString *)text;

/**
 *  Show popup message with multiple lines of text and auto hide. Default time interval is 4 sec.
 *
 *  @param text Text in popup message
 */
- (void)showPopupDetailsLabelWithText:(NSString *)text;

/**
 *  Show popup message with auto hide
 *
 *  @param text Text in popup message
 *  @param multipleLines Small font and more than one line of text
 *  @param delay Time interval before before message will hide
 */
- (void)showPopupLabelWithText:(NSString *)text multipleLines:(BOOL)multipleLines delay:(NSTimeInterval)delay;

@end
