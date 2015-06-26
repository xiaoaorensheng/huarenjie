//
//  LiycRootViewController.m
//  HuaRenJie
//
//  Created by 黎跃春 on 15/6/10.
//  Copyright (c) 2015年 黎跃春. All rights reserved.
//

#import "LiycRootViewController.h"
#import "RDVTabBarItem.h"
//主页
#import "LiycHomePageViewController.h"
//附近
#import "LiycNearbyViewController.h"
//发布
#import "LiycDistributeViewController.h"
//发现
#import "LiycDiscoverViewController.h"
//我的
#import "LiycOwnViewController.h"
@interface LiycRootViewController ()

@end

@implementation LiycRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupViewControllers];
}
- (void)setupViewControllers{
    
    /*主页*/
    
    LiycHomePageViewController *homePageVC = [[LiycHomePageViewController alloc] initWithNibName:@"LiycHomePageViewController" bundle:nil];
    UINavigationController *homePageNav = [[UINavigationController alloc] initWithRootViewController:homePageVC];
    homePageNav.tabBarItem.title = @"主页";
    /*附近*/
    LiycNearbyViewController *nearbyVC = [[LiycNearbyViewController alloc] initWithNibName:@"LiycNearbyViewController" bundle:nil];
    UINavigationController *nearbyNav = [[UINavigationController alloc] initWithRootViewController:nearbyVC];
    /*发布*/
    LiycDistributeViewController *distributeVC = [[LiycDistributeViewController alloc] initWithNibName:@"LiycDistributeViewController" bundle:nil];
    UINavigationController *distributeNav = [[UINavigationController alloc] initWithRootViewController:distributeVC];
    /*发现*/
    LiycDiscoverViewController *discoverVC = [[LiycDiscoverViewController alloc] initWithNibName:@"LiycDiscoverViewController" bundle:nil];
    UINavigationController *discoverNav = [[UINavigationController alloc] initWithRootViewController:discoverVC];
    /*我的*/
    LiycOwnViewController *ownVC = [[LiycOwnViewController alloc] initWithNibName:@"LiycOwnViewController" bundle:nil];
    UINavigationController *ownNav = [[UINavigationController alloc] initWithRootViewController:ownVC];
    
    [self setViewControllers:@[homePageNav,nearbyNav,distributeNav,discoverNav,ownNav]];
    
    [self customizeTabBarForController:self];
    
}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController {
    //TODO: 需要设置tabBar上面的button的的图片

    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[@"首页", @"附近", @"发布",@"发现",@"我的"];
    
    NSArray *imageNames = @[@"shouye",@"fujin",@"fabu",@"faxian",@"wode"];
    
    NSInteger index = 0;
    NSDictionary *textAttributes_normal = nil;
    NSDictionary *textAttributes_selected = nil;
    
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1) {
        textAttributes_normal = @{
                           NSFontAttributeName: [UIFont systemFontOfSize:12],
                           NSForegroundColorAttributeName: [UIColor colorWithRed:147/255.0 green:145/255.0 blue:145/255.0 alpha:1.0],
                           };
        textAttributes_selected = @{
                                  NSFontAttributeName: [UIFont systemFontOfSize:12],
                                  NSForegroundColorAttributeName: [UIColor colorWithRed:199/255.0 green:57/255.0 blue:32/255.0 alpha:1.0],
                                  };
    }
    
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        
        item.unselectedTitleAttributes = textAttributes_normal;
        item.selectedTitleAttributes = textAttributes_selected;
        item.title = tabBarItemImages[index];
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected.png",imageNames[index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal.png",imageNames[index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        index++;
    }
}


@end
