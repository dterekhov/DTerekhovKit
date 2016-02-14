//
//  UIView+DTPopupLabel.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Show popup message over current view
 */
@interface UIView (DTPopupLabel)

/**
 *  Show popup message with auto hide. Default time interval is 2 sec.
 *
 *  @param text Text in popup message
 */
- (void)dt_showPopupLabelWithText:(NSString *)text;

/**
 *  Show popup message with multiple lines of text and auto hide. Default time interval is 4 sec.
 *
 *  @param text Text in popup message
 */
- (void)dt_showPopupDetailsLabelWithText:(NSString *)text;

/**
 *  Show popup message with auto hide
 *
 *  @param text Text in popup message
 *  @param multipleLines Small font and more than one line of text
 *  @param delay Time interval before before message will hide
 */
- (void)dt_showPopupLabelWithText:(NSString *)text multipleLines:(BOOL)multipleLines delay:(NSTimeInterval)delay;

@end