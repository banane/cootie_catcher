//
//  GypsyAppDelegate.m
//  Gypsy
//
//  Created by Anna on 2/25/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "GypsyAppDelegate.h"
#import "GypsyViewController.h"

@implementation GypsyAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
