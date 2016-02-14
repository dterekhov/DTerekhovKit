//
//  UIScrollView+DTPullToRefresh.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UIScrollView+DTPullToRefresh.h"
#import <objc/runtime.h>

#define fequalzero(a) (fabs(a) < FLT_EPSILON)

@implementation UIScrollView (DTPullToRefresh)

#pragma mark - refreshControl accessors
- (void)setRefreshControl:(UIRefreshControl *)refreshControl
{
    objc_setAssociatedObject(self, @selector(refreshControl), refreshControl, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIRefreshControl *)refreshControl
{
    return objc_getAssociatedObject(self, @selector(refreshControl));
}

#pragma mark - Accessors
- (void)setRefreshHandler:(RefreshHandler)handler
{
    objc_setAssociatedObject(self, @selector(refreshHandler), handler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (RefreshHandler)refreshHandler
{
    return objc_getAssociatedObject(self, @selector(refreshHandler));
}

- (void)setDt_refreshControlColor:(UIColor *)refreshControlColor {
    self.refreshControl.backgroundColor = refreshControlColor;
}

- (UIColor *)dt_refreshControlColor {
    return self.refreshControl.backgroundColor;
}

- (void)setDt_refreshControlEnabled:(BOOL)enabled {
    if (enabled) {
        if (self.refreshControl.superview) { return; }
        [self addSubview:self.refreshControl];
    } else {
        [self.refreshControl removeFromSuperview];
    }
}

- (BOOL)dt_refreshControlEnabled {
    return self.refreshControl.superview != nil;
}

#pragma mark - init
- (void)dt_addPullToRefreshWithActionHandler:(RefreshHandler)handler
{
    self.refreshHandler = handler;
    
    self.refreshControl = [UIRefreshControl new];
    self.refreshControl.tintColor = [UIColor blackColor];
    [self.refreshControl addTarget:self action:@selector(refreshDidChanged:) forControlEvents:UIControlEventValueChanged];
    [self addSubview:self.refreshControl];
}

#pragma mark - Refresh methods
- (void)refreshDidChanged:(UIRefreshControl *)refreshControl
{
    self.refreshHandler();
}

- (void)dt_beginRefreshing {
    [self.refreshControl beginRefreshing];
    // If not was triggered by user (programmatically)
    if(fequalzero(self.contentOffset.y)) {
        // Scroll to top scrollView to showing refreshControl
        [self setContentOffset:CGPointMake(self.contentOffset.x, -self.refreshControl.frame.size.height) animated:YES];
    }
}

- (void)dt_endRefreshing {
    [self.refreshControl endRefreshing];
}

@end