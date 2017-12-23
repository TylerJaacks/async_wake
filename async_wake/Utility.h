//
//  Utility.h
//  async_wake
//
//  Created by Tyler Jaacks on 12/22/17.
//  Copyright © 2017 Tyler Jaacks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Utility : NSObject

+ (BOOL) isJailbrokenAlready;

+ (BOOL) isSupported;

+ (void) StartJailbreak;

@end
