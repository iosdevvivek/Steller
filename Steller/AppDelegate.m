//
//  AppDelegate.m
//  Steller
//
//  Created by XCube Inc. on 18/08/15.
//  Copyright (c) 2015 XCube Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "GlobalClass.h"
#import "MMDrawerController.h"
#import "MMExampleCenterTableViewController.h"
#import "MMExampleLeftSideDrawerViewController.h"
#import "MMExampleRightSideDrawerViewController.h"
#import "MMDrawerVisualState.h"
#import "MMExampleDrawerVisualStateManager.h"
#import "MMNavigationController.h"
#import "MainMenuVC.h"
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
@interface AppDelegate ()
@property (nonatomic,strong) MMDrawerController * drawerController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIViewController * leftSideDrawerViewController = [[MMExampleLeftSideDrawerViewController alloc] init];
    UINavigationController * navigationController;
    UIStoryboard *storyboard;
    
    if (IS_IPAD) {
        storyboard = [UIStoryboard storyboardWithName:@"StoryboardiPad" bundle:nil];
    } else {
        storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    
    NSLog(@"%hhd", [[NSUserDefaults standardUserDefaults] boolForKey:USERLOGGEDIN]);
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:USERLOGGEDIN] == NO ) {
      
        ViewController *myVC = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        navigationController = [[MMNavigationController alloc] initWithRootViewController:myVC];
    
        //
    } else {
        MainMenuVC *myVC = (MainMenuVC *)[storyboard instantiateViewControllerWithIdentifier:@"MainMenuVC"];
        navigationController = [[MMNavigationController alloc] initWithRootViewController:myVC];
       
    }
    
   
  //  [self presentViewController:myVC animated:NO completion:nil];
    
  //  UIViewController * centerViewController = [[MMExampleCenterTableViewController alloc] init];
    
    UIViewController * rightSideDrawerViewController = [[MMExampleRightSideDrawerViewController alloc] init];
    
  
    [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey"];
    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey"];
    UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey"];
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:navigationController
                             leftDrawerViewController:leftSideNavController
                             rightDrawerViewController:nil];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setRestorationIdentifier:@"MMDrawer"];
    [self.drawerController setMaximumRightDrawerWidth:200.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self.drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIColor * tintColor = [UIColor colorWithRed:29.0/255.0
                                          green:173.0/255.0
                                           blue:234.0/255.0
                                          alpha:1.0];
    [self.window setTintColor:tintColor];
    
    // ViewController *myVCc = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
  //   UINavigationController * navigationControllerr = [[UINavigationController alloc] initWithRootViewController:myVCc];
    [self.window setRootViewController:self.drawerController];
 //   [self.window setRootViewController:navigationControllerr];
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
