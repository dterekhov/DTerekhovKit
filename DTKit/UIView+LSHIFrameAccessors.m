#import "UIView+LSHIFrameAccessors.h"

@implementation UIView (LSHIFrameAccessors)


- (void)setFrameX:(float)frameX{
    self.frame = CGRectMake(frameX, self.frameY, self.sizeWidth, self.sizeHeight);
}

- (void)setFrameY:(float)frameY{
    self.frame = CGRectMake(self.frameX, frameY, self.sizeWidth, self.sizeHeight);
}

- (void)setSizeWidth:(float)sizeWidth{
    self.frame = CGRectMake(self.frameX, self.frameY, sizeWidth, self.sizeHeight);
}

- (void)setSizeHeight:(float)sizeHeight{
    self.frame = CGRectMake(self.frameX, self.frameY, self.sizeWidth, isnan(sizeHeight) ? 0 : sizeHeight);
}

- (float)frameX{
    return self.frame.origin.x;
}

- (float)frameY{
    return self.frame.origin.y;
}

- (float)sizeWidth{
    return self.frame.size.width;
}

- (float)sizeHeight{
    return self.frame.size.height;
}

@end
