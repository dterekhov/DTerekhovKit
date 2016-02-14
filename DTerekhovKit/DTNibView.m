//
//  DTNibView.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "DTNibView.h"

@interface DTNibView ()

@property (nonatomic) UIView *view;

@end

@implementation DTNibView

#pragma mark - Lifecycle
- (instancetype)init
{
    if ((self = [super init])) {
        [self dt_setupView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        [self dt_setupView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        [self dt_setupView];
    }
    return self;
}

#pragma mark - Setups
- (void)dt_setupView {
    self.view = [self dt_loadViewFromNib];
    self.view.frame = self.bounds;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:self.view];
}

- (UIView *)dt_loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    return view;
}

@end