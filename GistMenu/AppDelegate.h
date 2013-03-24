//
//  AppDelegate.h
//  GistMenu
//
//  Created by Hiroshi Horie on 2013/03/16.
//  Copyright (c) 2013年 Hiroshi Horie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *_statusItem;
    NSMenu *_statusMenu;
}

@property (assign) IBOutlet NSWindow *window;

@end
