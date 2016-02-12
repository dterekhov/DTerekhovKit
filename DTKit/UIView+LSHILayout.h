//
//  UIView+LSHILayout.h
//
//  Created by Dmitry Terekhov on 17.11.14.
//  Copyright (c) 2014. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Change NSLayoutAttributes (constrants) programmatically. But before use this category constraints will be set in xib or storyboard.
 */
@interface UIView (LSHILayout)

/**
 *  Height constraint of view
 */
@property (nonatomic) CGFloat lshi_layoutHeight;

/**
 *  Width constraint of view
 */
@property (nonatomic) CGFloat lshi_layoutWidth;

@end
