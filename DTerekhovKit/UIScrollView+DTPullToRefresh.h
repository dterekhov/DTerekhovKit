//
//  UIScrollView+DTPullToRefresh.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^RefreshHandler)();

/**
 *  Extended UIScrollView with UIRefreshControl
 */
@interface UIScrollView (DTPullToRefresh)

/**
 *  Availability of refreshControl. In disable case pull-to-refresh action will be saved.
 */
@property (nonatomic) BOOL dt_refreshControlEnabled;

/**
 *  Background color of refreshControl
 */
@property (nonatomic) UIColor *dt_refreshControlColor;

/**
 *  Add UIRefreshControl to UIScrollView as subview with action
 *
 *  @param handler Pull-to-refresh action
 */
- (void)dt_addPullToRefreshWithActionHandler:(RefreshHandler)handler;

// Refresh methods
- (void)dt_beginRefreshing;
- (void)dt_endRefreshing;

@end