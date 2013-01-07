//
//  LightAppDelegate.h
//  Light
//
//  Created by Eric Bomgardner on 9/13/12.
//  Copyright (c) 2012 Eric Bomgardner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@class LightViewController;

@interface LightAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LightViewController *viewController;

@end
