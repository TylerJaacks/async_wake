//
//  ViewController.h
//  async_wake
//
//  Created by Tyler Jaacks on 12/21/17.
//  Copyright © 2017 Tyler Jaacks. All rights reserved.
//

#include "Utility.h"

#import <UIKit/UIKit.h>

BOOL isJailbroken = false;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *iOSVersionLabel;

@property (weak, nonatomic) IBOutlet UILabel *iDeviceLabel;

@property (weak, nonatomic) IBOutlet UIButton *JailbreakButton;

- (IBAction)JailbreakDevice:(id)sender;

@end

