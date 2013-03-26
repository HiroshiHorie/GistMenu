//
//  main.m
//  GistMenuApp
//
//  Created by Hiroshi Horie on 2013/03/25.
//  Copyright (c) 2013年 Mobiq, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GistMenu.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSApplication * app = [NSApplication sharedApplication];

        ProcessSerialNumber psn = { 0, kCurrentProcess };
        TransformProcessType(&psn, kProcessTransformToUIElementApplication);

        id delegate = [[GistMenu alloc] init];

        [app setDelegate:delegate];
        [app run];
    }
    return EXIT_SUCCESS;
}
