//
//  SFGoogleAnalyticsSender.h
//
//  Created by Dmitry Terekhov on 19.02.15.
//  Copyright (c) 2015. All rights reserved.
//

#import "SFGoogleAnalyticsSender.h"
#import <Google/Analytics.h>

@implementation SFGoogleAnalyticsSender

#pragma mark - Main method

+ (void)sendDataWithScreenDescription:(NSString *)screenDescription fromPlace:(id)fromPlace  eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction eventLabel:(NSString *)eventLabel {
    // May return nil if a tracker has not yet been initialized with a property ID
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    // Generate screenDetailName
    NSString *screenDetailName = screenDescription;
    // Reassign screenDetailName if fromPlace != nil
    if (fromPlace) {
        NSString *classNameFromCode = NSStringFromClass([fromPlace class]);
        if (_prettyClassNameFromCode) {
            [SFGoogleAnalyticsSender removePrefixAndSuffixFromClassName:&classNameFromCode];
        }
        screenDetailName = screenDescription ? [NSString stringWithFormat:@"%@ (%@)", screenDescription, classNameFromCode] : classNameFromCode;
    }
    
    // Set screen name on the tracker to be sent with all hits
    [tracker set:kGAIScreenName
           value:screenDetailName];
    
    // Send a screen view for "screenName"
    [tracker send:[[GAIDictionaryBuilder createScreenView] build]];
    
    // This event will also be sent as additional info
    if (eventCategory && eventAction && eventLabel) {
        [tracker send:[[GAIDictionaryBuilder createEventWithCategory:eventCategory
                                                              action:eventAction
                                                               label:eventLabel
                                                               value:nil] build]];
    }
    // Clear the screen name field when we're done
    [tracker set:kGAIScreenName
           value:nil];
}

#pragma mark - Short variations of Main method

+ (void)sendDataFromPlace:(id)fromPlace eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction eventLabel:(NSString *)eventLabel {
    [self sendDataWithScreenDescription:nil fromPlace:fromPlace eventCategory:eventCategory eventAction:eventAction eventLabel:eventLabel];
}

+ (void)sendDataFromPlace:(id)fromPlace eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction {
    [self sendDataWithScreenDescription:nil fromPlace:fromPlace eventCategory:eventCategory eventAction:eventAction eventLabel:nil];
}

#pragma mark - Optional setups

static BOOL _prettyClassNameFromCode = NO;
static NSString *_classPrefix = nil;
static NSString *_classSuffix = nil;

+ (BOOL)prettyClassNameFromCode {
    return _prettyClassNameFromCode;
}

+ (void)setPrettyClassNameFromCode:(BOOL)value {
    _prettyClassNameFromCode = value;
}

+ (void)setupFromPlaceClassNameWithoutGlobalProjectClassPrefix:(NSString *)classPrefix classSuffix:(NSString *)classSuffix {
    _prettyClassNameFromCode = YES;
    _classPrefix = classPrefix;
    _classSuffix = classSuffix;
}

#pragma mark - Helpers

+ (void)removePrefixAndSuffixFromClassName:(NSString **)className {
    if (!className || !_prettyClassNameFromCode) { return; }
    
    NSString *nameWithoutPrefix = [*className stringByReplacingOccurrencesOfString:_classPrefix withString:@""];
    // Name without prefix and suffix
    *className = [nameWithoutPrefix stringByReplacingOccurrencesOfString:_classSuffix withString:@""];
}

@end