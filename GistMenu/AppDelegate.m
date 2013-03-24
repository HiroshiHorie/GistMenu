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
    
    _statusMenu = [[NSMenu alloc] init];
//    _statusMenu.delegate = self;
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    _statusItem.title = @"Gist";
    //[_statusItem setImage:[NSImage imageNamed:@"upload-cloud"]];
    
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_statusMenu];

    //NSMenuItem *menuItem1 = [_statusMenu addItemWithTitle:@"Item 1" action:nil keyEquivalent:@""];
    //[_statusMenu addItem:menuItem1];
    //menuItem1.attributedTitle
    
//    NSSearchField *searchField = [[NSSearchField alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 30.0f)];
//    NSMenuItem *menuItem2 = [_statusMenu addItemWithTitle:@"Item 2" action:nil keyEquivalent:@""];
//    [menuItem2 setView:searchField];
    //[_statusMenu addItem:menuItem2];
    

    NSArray *a = @[@"", @""];
    
    UAGithubEngine *engine = [[UAGithubEngine alloc] initWithUsername:@"private@hiroshihorie.com"
                                                             password:@"Zbug3JzY" withReachability:YES];
    
    [engine gistsWithSuccess:^(id response) {
		//NSLog(@"Got an array of repos: %@", response);
        if ([response isKindOfClass:[NSArray class]]) {
            for (id object in response) {
                //NSLog(@"d : %@", [object objectForKey:@"description"]);
                NSString *description = [object objectForKey:@"description"];
                NSMenuItem *menuItem1 = [_statusMenu addItemWithTitle:description action:nil keyEquivalent:@""];

            }
        }
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
