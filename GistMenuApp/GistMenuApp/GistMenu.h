//
//  AppDelegate.h
//  GistMenuApp
//
//  Created by Hiroshi Horie on 2013/03/25.
//  Copyright (c) 2013年 Mobiq, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GistMenu : NSObject<NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (strong, readonly) NSStatusItem *statusItem;
@property (strong, readonly) NSMenu *statusMenu;

@end
