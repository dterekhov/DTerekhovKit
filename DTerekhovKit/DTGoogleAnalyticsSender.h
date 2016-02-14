//
//  DTGoogleAnalyticsSender.h
//  DTerekhovKit
//
//  Created by Dmitry Terekhov on 2/12/16.
//  Copyright © 2016 Dmitry Terekhov. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Convenient wrapper for Google Analytics service to Send data
 */
@interface DTGoogleAnalyticsSender : NSObject

#pragma mark - Main method
/**
 *  Send data to Google Analytics service. Best place to use this method in viewDidAppear in UIViewController.
 *
 *  @param screenDescription Usually name of UIViewController
 *  @param fromPlace         The place where this method is called. Usually this parameter is keyword 'self'
 *  @param eventCategory     Category belongs to UI control
 *  @param eventAction       Action that you will perform with the component
 *  @param eventLabel        Name of UI control. Such as UIButton.
 */
+ (void)sendDataWithScreenDescription:(NSString *)screenDescription fromPlace:(id)fromPlace  eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction eventLabel:(NSString *)eventLabel;

#pragma mark - Short variations of Main method
/**
 *  Send data to Google Analytics service. Best place to use this method in viewDidAppear in UIViewController.
 *
 *  @param fromPlace         The place where this method is called. Usually this parameter is keyword 'self'
 *  @param eventCategory     Category belongs to UI control
 *  @param eventAction       Action that you will perform with the component
 *  @param eventLabel        Name of UI control. Such as UIButton.
 */
+ (void)sendDataFromPlace:(id)fromPlace eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction eventLabel:(NSString *)eventLabel;

/**
 *  Send data to Google Analytics service. Best place to use this method in viewDidAppear in UIViewController.
 *
 *  @param fromPlace         The place where this method is called. Usually this parameter is keyword 'self'
 *  @param eventCategory     Category belongs to UI control
 *  @param eventAction       Action that you will perform with the component
 */
+ (void)sendDataFromPlace:(id)fromPlace eventCategory:(NSString *)eventCategory eventAction:(NSString *)eventAction;

#pragma mark - Optional setups
+ (void)setupFromPlaceClassNameWithoutGlobalProjectClassPrefix:(NSString *)classPrefix classSuffix:(NSString *)classSuffix;
+ (BOOL)prettyClassNameFromCode;
+ (void)setPrettyClassNameFromCode:(BOOL)value;

@end