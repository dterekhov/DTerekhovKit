//
//  UIImage+DTProcessing.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Processing color of image
 */
@interface UIImage (DTProcessing)

/**
 *  Convert colored image to grayscale
 *
 *  @return Converted image
 */
- (UIImage *)lshi_toGrayscale;

/**
 *  Convert colored image to solid image filled with tintColor
 *
 *  @param tintColor Color to fill image
 *
 *  @return Converted image
 */
- (UIImage *)lshi_tintWithColor:(UIColor *)tintColor;

/**
 *  Apply alpha to image
 */
- (UIImage *)imageWithAlpha:(CGFloat)alpha;

@end