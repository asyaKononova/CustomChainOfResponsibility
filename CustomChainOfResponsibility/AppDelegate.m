//
//  AppDelegate.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/17/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "UIResponder+Target.h"

#import "FirstProtocolImpl.h"
#import "SecondProtocolImpl.h"
#import "StupidProtocolImpl.h"

@interface AppDelegate ()

@end

@implementation AppDelegate {
    UIWindow *_window;
    
    NSArray *_targets;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[FirstViewController new]];
    
    _targets = @[[FirstProtocolImpl new], [SecondProtocolImpl new], [StupidProtocolImpl new]];
    
    [_window makeKeyAndVisible];
    
    return YES;
}

- (id)targetForProtocol:(Protocol *)protocol withSender:(id)sender
{
    for (NSObject *target in _targets) {
        if ([target conformsToProtocol:protocol]) {
            return target;
        }
    }
    return nil;
}

@end
