//
//  UIScrollView+LSHIInfiniteScroll.h
//
//  Created by Dmitry Terekhov on 20.10.14.
//  Copyright (c) 2014. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^RefreshHandler)();

/**
 *  Extended UIScrollView with UIRefreshControl
 */
@interface UIScrollView (LSHIPullToRefresh)

/**
 *  Availability of refreshControl. In disable case pull-to-refresh action will be saved.
 */
@property (nonatomic) BOOL refreshControlEnabled;

/**
 *  Background color of refreshControl
 */
@property (nonatomic) UIColor *refreshControlColor;

/**
 *  Add UIRefreshControl to UIScrollView as subview with action
 *
 *  @param handler Pull-to-refresh action
 */
- (void)lshi_addPullToRefreshWithActionHandler:(RefreshHandler)handler;

// Refresh methods
- (void)beginRefreshing;
- (void)endRefreshing;

@end
