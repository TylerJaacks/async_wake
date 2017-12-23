//
//  Utility.m
//  async_wake
//
//  Created by Tyler Jaacks on 12/22/17.
//  Copyright © 2017 Tyler Jaacks. All rights reserved.
//

#import "Utility.h"

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation Utility

+ (BOOL) isJailbrokenAlready {
    // Check if the device is already Jailbroken.
    return false;
}

+ (void) StartJailbreak {
    // Set the status of the device to already jailbroken.
}

+ (BOOL) isSupported {
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"11.2")) {
        return false;
    }
    
    return true;
}

@end
