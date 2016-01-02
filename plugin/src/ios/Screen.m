//
//  Screen.m
//  HelloCordova
//
//  Created by Ganesh, Ashwin on 12/1/15.
//
//

#import "Screen.h"
#import "NativeViewController.h"
#import "AppDelegate.h"

@implementation Screen
-(void)methodCalled:(CDVInvokedUrlCommand*) command {
    NativeViewController *natVC = [[NativeViewController alloc] initWithNibName:@"NativeViewController" bundle:nil];
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate.viewController presentViewController:natVC animated:YES completion:nil];
    
    CDVPluginResult* pluginResult = nil;
    NSString* myarg = [command.arguments objectAtIndex:0];
    
    if (myarg != nil) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was null"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
