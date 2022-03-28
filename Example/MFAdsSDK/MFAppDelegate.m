//
//  MFAppDelegate.m
//  MFAdsSDK
//
//  Created by cc on 03/22/2022.
//  Copyright (c) 2022 cc. All rights reserved.
//

#import "MFAppDelegate.h"
#import <MFAdsAdspot/EasyAdSplash.h>

#import <MFAdsCore/EasyAdSdkConfig.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@implementation MFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self performSelector:@selector(delayMethod) withObject:nil afterDelay:5.0];
      
    return YES;
}
- (void)delayMethod {
    // 申请权限代码 requestAppTrackAuth ;
     __block NSString *idfa = @"";
     ASIdentifierManager *manager = [ASIdentifierManager sharedManager];
     if (@available(iOS 14, *)) {
         [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
             if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                 idfa = [[manager advertisingIdentifier] UUIDString];
             }
             dispatch_async(dispatch_get_main_queue(), ^{
                 // do something
                 [EasyAdSdkConfig shareInstance].level = EasyAdLogLevel_Debug;
 //                [EasyAdSdkConfig shareInstance].appId = @"100255";
 //                [self loadSplash];
             });
         }];
     }else{
         if ([manager isAdvertisingTrackingEnabled]) {
             idfa = [[manager advertisingIdentifier] UUIDString];
 //            [EasyAdSdkConfig shareInstance].appId = @"100255";
 //            [self loadSplash];
         }
     }
    
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
