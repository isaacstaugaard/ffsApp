//
//  AppDelegate.m
//  FFS
//
//  Created by vinh ha on 5/28/15.
//  Copyright (c) 2015 Vinh Ha. All rights reserved.
//

#import "AppDelegate.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <ParseFacebookUtilsV4/PFFacebookUtils.h>




@interface AppDelegate ()

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // [Optional] Power your app with Local Datastore. For more info, go to
    // https://parse.com/docs/ios_guide#localdatastore/iOS
    [Parse enableLocalDatastore];
    
    // Initialize Parse.
    [Parse setApplicationId:@"66wptpUCXEZy8PIp5DdzoBmVlAo5A0FjIfKo0JJ0"
                  clientKey:@"ADLU0qsYue8kjrO926O0i1VQn98TPMOfsHPqRr1X"];
    [PFFacebookUtils initializeFacebookWithApplicationLaunchOptions:launchOptions];
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    // [Optional] Track statistics around application opens.
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:0.0/255.0 green: 191.0/255.0 blue:143.0/255.0 alpha:1.0]];
    //[[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.0/255.0 green: 191.0/255.0 blue:143.0/255.0 alpha:1.0]];
    
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                    didFinishLaunchingWithOptions:launchOptions];
    

    
    // ...

}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [FBSDKAppEvents activateApp];
}


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                          openURL:url
                                                sourceApplication:sourceApplication
                                                       annotation:annotation];
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
