#import <UIKit/UIKit.h>

/**
 *  Convenient short variant to change self.frame.origin and self.frame.size
 */
@interface UIView (LSHIFrameAccessors)

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
