//
//  UIImage+ImageProcessing.h
//
//  Created by Vincent Saluzzo on 28/05/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Processing color of image
 */
@interface UIImage (LSHIImageProcessing)

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