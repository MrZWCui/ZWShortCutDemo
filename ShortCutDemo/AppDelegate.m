//
//  AppDelegate.m
//  ShortCutDemo
//
//  Created by 崔先生的MacBook Pro on 2023/9/19.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController2.h"
#import "LaunchAppIntent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [ViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler {
    if([userActivity.interaction.intent isKindOfClass:[LaunchAppIntent class]]){
        ViewController *vc = [ViewController new];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        self.window.rootViewController = nav;
        ViewController2 *secondVC = [[ViewController2 alloc] init];
        [vc.navigationController pushViewController:secondVC animated:YES];
        return YES;
    }
    return NO;
}



@end
