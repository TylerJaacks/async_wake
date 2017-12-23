//
//  ViewController.m
//  async_wake
//
//  Created by Tyler Jaacks on 12/21/17.
//  Copyright © 2017 Tyler Jaacks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isJailbroken  = [Utility isJailbrokenAlready];
    
    [_iDeviceLabel setText:[[UIDevice currentDevice] model]];
    
    [_iOSVersionLabel setText:[UIDevice currentDevice].systemVersion];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)JailbreakDevice:(id)sender {
    if ([Utility isSupported]) {
        [Utility StartJailbreak];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Version is Not Supported!"
                                                        message:@"Your version of iOS is not supported."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];

    }
    
    if (![Utility isJailbrokenAlready]) {
        NSLog(@"Starting the Jailbreak process sit tight and wait for the process to finish, please do not lock, exit the app, or shutdown the device.");
        [Utility StartJailbreak];
        isJailbroken = YES;
    } else {
        NSLog(@"The device is already jailbroken, if you are having trouble reboot the device and try again.");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your device is already Jailbroken!;"
                                                        message:@"If you are having issue please try restarting your device and try again."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

@end
