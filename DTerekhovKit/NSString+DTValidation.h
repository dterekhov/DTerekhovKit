//
//  NSString+DTValidation.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DTValidation)

/**
 *  Check email using regular expressions
 *
 *  @return Email is valid
 */
- (BOOL)dt_isValidEmail;

@end