//
//  UIView+DTLayout.m
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import "UIView+DTLayout.h"

@implementation UIView (DTLayout)

- (void)setConstraintConstant:(CGFloat)constant forAttribute:(NSLayoutAttribute)attribute
{
    NSLayoutConstraint *constraint = [self constraintForAttribute:attribute];
    if (constraint) {
        constraint.constant = constant;
    }
}

- (NSArray *)constaintsForAttribute:(NSLayoutAttribute)attribute
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(firstAttribute = %d) AND (self isMemberOfClass: %@)", attribute, NSLayoutConstraint.class];
    NSArray *filteredArray = [[self constraints] filteredArrayUsingPredicate:predicate];

    if (!filteredArray.count) {
        NSMutableArray *subpredicates = [NSMutableArray array];
        [subpredicates addObject:[NSPredicate predicateWithFormat:@"firstItem = %@", self]];
        [subpredicates addObject:[NSPredicate predicateWithFormat:@"firstAttribute = %d", attribute]];
        NSPredicate *finished = [NSCompoundPredicate andPredicateWithSubpredicates:subpredicates];
        filteredArray = [self.superview.constraints filteredArrayUsingPredicate:finished];
    }

    return filteredArray;
}

- (NSLayoutConstraint *)constraintForAttribute:(NSLayoutAttribute)attribute
{
    NSArray *constraints = [self constaintsForAttribute:attribute];
    return [constraints firstObject];
}

#pragma mark - Accessors
- (void)setDt_layoutHeight:(CGFloat)lshi_layoutHeight
{
    [self setConstraintConstant:lshi_layoutHeight forAttribute:NSLayoutAttributeHeight];
}

- (CGFloat)dt_layoutHeight
{
    return [self constraintForAttribute:NSLayoutAttributeHeight].constant;
}

- (void)setDt_layoutWidth:(CGFloat)lshi_layoutWidth
{
    [self setConstraintConstant:lshi_layoutWidth forAttribute:NSLayoutAttributeWidth];
}

- (CGFloat)dt_layoutWidth
{
    return [self constraintForAttribute:NSLayoutAttributeWidth].constant;
}

@end