//
//  DTAlignmentMiddleTextView.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  TextView which can has middle alignment for text
 */
@interface DTAlignmentMiddleTextView : UITextView

/**
 *  Align the text to the middle. By default is true.
 */
@property (nonatomic) BOOL textAlignmentIsMiddle;

@end