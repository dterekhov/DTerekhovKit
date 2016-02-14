//
//  UIView+DTFrameAccessors.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Convenient short variant to change self.frame.origin and self.frame.size
 */
@interface UIView (DTFrameAccessors)

/**
 *  Short path for: self.frame.origin.x
 */
@property (nonatomic) float frameX;

/**
 *  Short path for: self.frame.origin.y
 */
@property (nonatomic) float frameY;

/**
 *  Short path for: self.frame.size.width
 */
@property (nonatomic) float sizeWidth;

/**
 *  Short path for: self.frame.size.height
 */
@property (nonatomic) float sizeHeight;

@end