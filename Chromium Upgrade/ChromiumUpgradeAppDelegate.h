//
//  ChromiumUpgradeAppDelegate.h
//  Chromium Upgrade
//
//  Created by Thiago Avelino on 8/2/13.
//  Copyright (c) 2013 Avelino Labs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ChromiumUpgradeAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

/**
 * NSTask
 */
@property (nonatomic, strong) __block NSTask *buildTask;
@property (nonatomic) BOOL isRunning;
@property (nonatomic, strong) NSPipe *outputPipe;

@end
