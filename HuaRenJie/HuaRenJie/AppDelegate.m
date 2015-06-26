//
//  AppDelegate.m
//  HuaRenJie
//
//  Created by 黎跃春 on 15/6/6.
//  Copyright (c) 2015年 黎跃春. All rights reserved.
//

#import "AppDelegate.h"
#import "RDVTabBarController.h"
#import "LiycRootViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
//    控制器配置
    
    LiycRootViewController *rootVC = [[LiycRootViewController alloc] init];
    self.rooViewController = rootVC;
    
    [self.window setRootViewController:self.rooViewController];
#pragma mark --设置导航背景
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:220/255.0 green:78/255.0 blue:49/255.0 alpha:1.000]];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:244/255.0 green:244/255.0 blue:242/255.0 alpha:1.000]];
    
    [self.window makeKeyAndVisible];
    return YES;
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

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
