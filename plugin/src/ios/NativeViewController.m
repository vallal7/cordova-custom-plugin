//
//  NativeViewController.m
//  customplugindemo
//
//  Created by Ganesh, Ashwin on 1/2/16.
//  Copyright © 2016 Ganesh, Ashwin. All rights reserved.
//

#import "NativeViewController.h"

@interface NativeViewController ()

@end

@implementation NativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"A Native Alert" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                          }];
    
    [alert addAction:defaultAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(IBAction)dismissNativeView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
