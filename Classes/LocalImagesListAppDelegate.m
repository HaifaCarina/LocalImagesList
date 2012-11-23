//
//  LocalImagesListAppDelegate.m
//  LocalImagesList
//
//  Created by Macbook on 5/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LocalImagesListAppDelegate.h"
#import "RootViewController.h"


@implementation LocalImagesListAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    // Add the navigation controller's view to the window and display.
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

