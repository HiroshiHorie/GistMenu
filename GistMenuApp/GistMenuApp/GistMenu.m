//
//  AppDelegate.m
//  GistMenuApp
//
//  Created by Hiroshi Horie on 2013/03/25.
//  Copyright (c) 2013年 Mobiq, Inc. All rights reserved.
//

#import "GistMenu.h"
#import "UAGithubEngine.h"

@implementation GistMenu

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    NSImage *octocatImage = [NSImage imageNamed:@"status-item"];
    [octocatImage setTemplate:YES];
    
    NSImage *gearImage = [NSImage imageNamed:@"icon-gear"];
    [gearImage setTemplate:YES];
    
    NSImage *exitImage = [NSImage imageNamed:@"icon-exit"];
    [exitImage setTemplate:YES];

    
    _statusMenu = [[NSMenu alloc] init];
    //_statusMenu.delegate = self;

    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:octocatImage];
    [_statusItem setHighlightMode:YES];
    [_statusItem setMenu:_statusMenu];
    
    NSMenuItem *menuItem = nil;

    menuItem = [_statusMenu addItemWithTitle:@"No recent items" action:nil keyEquivalent:@""];
    [menuItem setImage:[NSImage imageNamed:@"clock"]];

    menuItem = [_statusMenu addItemWithTitle:NSLocalizedString(@"Preferences...", nil) action:@selector(preferencesAction:) keyEquivalent:@""];
    [menuItem setImage:gearImage];

    menuItem = [_statusMenu addItemWithTitle:NSLocalizedString(@"Quit", nil) action:@selector(quitAction:) keyEquivalent:@""];
    [menuItem setImage:exitImage];

}

- (void)preferencesAction:(id)sender {
    //[_tokenTextField setStringValue:token];
    
    [_window makeKeyAndOrderFront:self];
    [NSApp activateIgnoringOtherApps:YES];
}

- (void)closeAction:(id)sender {
    [_window orderOut:self];
}

- (void)quitAction:(id)sender {
    [NSApp terminate:self];
}


@end
