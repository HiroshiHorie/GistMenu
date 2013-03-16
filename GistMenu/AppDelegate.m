//
//  AppDelegate.m
//  GistMenu
//
//  Created by Hiroshi Horie on 2013/03/16.
//  Copyright (c) 2013年 Hiroshi Horie. All rights reserved.
//

#import "AppDelegate.h"
#import "UAGithubEngine.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    UAGithubEngine *engine = [[UAGithubEngine alloc] initWithUsername:@"private@hiroshihorie.com"
                                                             password:@"Zbug3JzY" withReachability:YES];
    
    [engine gistsWithSuccess:^(id response) {
		NSLog(@"Got an array of repos: %@", response);
	} failure:^(NSError *error) {
		NSLog(@"Oops: %@", error);
	}];

//    [engine user:@"this_guy" isCollaboratorForRepository:@"UAGithubEngine" success:^(BOOL collaborates) {
//		NSLog(@"%d", collaborates);
//	} failure:^(NSError *error){
//		NSLog(@"D'oh: %@", error);
//	}];

}

@end
