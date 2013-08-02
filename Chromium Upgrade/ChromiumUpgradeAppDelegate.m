//
//  ChromiumUpgradeAppDelegate.m
//  Chromium Upgrade
//
//  Created by Thiago Avelino on 8/2/13.
//  Copyright (c) 2013 Avelino Labs. All rights reserved.
//

#import "ChromiumUpgradeAppDelegate.h"

@implementation ChromiumUpgradeAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)speak:(id)sender {
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/bin/sh"];
    [task setArguments:[NSArray arrayWithObjects:@"yourScript.sh", nil]];
    [task setStandardOutput:[NSPipe pipe]];
    [task setStandardInput:[NSPipe pipe]];
    
    [task launch];
    //[task release];
}

@end
