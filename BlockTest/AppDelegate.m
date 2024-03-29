//
//  AppDelegate.m
//  BlockTest
//
//  Created by Hristo Hristov on 4/27/12.
//  Copyright (c) 2012 DailyBurn. All rights reserved.
//

#import "AppDelegate.h"
#import "NextViewController.h"

@interface AppDelegate () 

@property (strong, nonatomic) UINavigationController* navigationController;

@end

@implementation AppDelegate

@synthesize window = _window;
@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  
  UIViewController* mainController = [[UIViewController alloc] init];
  [mainController.view setBackgroundColor:[UIColor redColor]];
 
  UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:mainController];
  self.navigationController = navController;
  
  UIBarButtonItem* nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" 
                                                                 style:UIBarButtonItemStylePlain 
                                                                target:self 
                                                                action:@selector(nextTapped:)];
  [mainController.navigationItem setRightBarButtonItem:nextButton];
  
  [self.window setRootViewController:navController];
  
  
  [self.window makeKeyAndVisible];
  return YES;
}

////////////////////////////////////////////////////////////////////////////////
- (void)nextTapped:(id)sender {
  
  NextViewController* nextVC = [[NextViewController alloc] init];
  [self.navigationController pushViewController:nextVC animated:YES];
  
}

////////////////////////////////////////////////////////////////////////////////

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
