//
//  AmosAppDelegate.m
//  Amos
//
//  Created by Justin Rhoades on 10/16/10.
//  Copyright 2010 Anything Honest. All rights reserved.
//

#import "AmosAppDelegate.h"
#import "ModeAViewController.h"
#import "AmosMIDIManager.h"

@implementation AmosAppDelegate

@synthesize window;
@synthesize modeA;
@synthesize midiManager;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	//[[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait];
	//[[UIDevice currentDevice] setOrientation:UIInterfaceOrientationPortrait];
	
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	
	//NSLog(@"convertToGL %@", [[UIDevice currentDevice] orientation]);

	
	self.midiManager = [[AmosMIDIManager alloc] init];

	modeA = [[ModeAViewController alloc] init];
	[window addSubview:[modeA view]];
    [window makeKeyAndVisible];
	
	midiManager.controller = modeA;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	
	[midiManager stopMIDI];
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
	
	[midiManager stopMIDI];
	
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [modeA release];
    [window release];
    [super dealloc];
}


@end
