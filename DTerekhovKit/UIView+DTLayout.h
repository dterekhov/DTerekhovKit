//
//  UIView+DTLayout.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Change NSLayoutAttributes (constrants) programmatically. But before use this category constraints will be set in xib or storyboard.
 */
@interface UIView (DTLayout)

/**
 *  Height constraint of view
 */
@property (nonatomic) CGFloat dt_layoutHeight;

/**
 *  Width constraint of view
 */
@property (nonatomic) CGFloat dt_layoutWidth;

@end