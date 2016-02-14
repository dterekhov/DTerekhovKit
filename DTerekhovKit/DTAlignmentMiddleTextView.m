//
//  DTAlignmentMiddleTextView.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "DTAlignmentMiddleTextView.h"

@implementation DTAlignmentMiddleTextView

#pragma mark - Lifecycle
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self dt_setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer
{
    self = [super initWithFrame:frame textContainer:textContainer];
    if (self) {
        [self dt_setup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self dt_setup];
    }
    return self;
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"contentSize"];
}

#pragma mark - Setups
- (void)dt_setup {
    [self addObserver:self forKeyPath:@"contentSize" options:(NSKeyValueObservingOptionNew) context:NULL];
    _textAlignmentIsMiddle = YES; // By default
    
    // Change text to invoke refresh method. Text must be not empty.
    NSString *originalText = self.text;
    self.text = @"Any text to setup cursor in the middle of TextView only for first focus";
    self.text = originalText;
}

#pragma mark - Accessors
- (void)setTextAlignmentIsMiddle:(BOOL)textAlignmentIsMiddle {
    _textAlignmentIsMiddle = textAlignmentIsMiddle;
    [self dt_refreshAlignment];
}

#pragma mark -
// For text alignment center vertical in TextView
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [self dt_refreshAlignment];
}

- (void)dt_refreshAlignment {
    if (self.textAlignmentIsMiddle) {
        CGFloat topInset = (self.bounds.size.height - self.contentSize.height * self.zoomScale) / 2.0;
        topInset = topInset < 0.0 ? 0.0 : topInset;
        self.contentInset = UIEdgeInsetsMake(topInset, 0, 0, 0);
    } else {
        self.contentInset = UIEdgeInsetsZero;
    }
}

@end