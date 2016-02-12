//
//  LSHINibView.m
//
//  Copyright (c) 2014. All rights reserved.
//

#import "LSHINibView.h"

@interface LSHINibView ()

@property (nonatomic) UIView *view;

@end

@implementation LSHINibView

- (instancetype)init
{
    if ((self = [super init])) {
        [self lshi_setupView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        [self lshi_setupView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        [self lshi_setupView];
    }
    return self;
}

- (void)lshi_setupView {
    self.view = [self lshi_loadViewFromNib];
    self.view.frame = self.bounds;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:self.view];
}

- (UIView *)lshi_loadViewFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    return view;
}

@end