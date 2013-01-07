//
//  LightViewController.m
//  Light
//
//  Created by Eric Bomgardner on 9/13/12.
//  Copyright (c) 2012 Eric Bomgardner. All rights reserved.
//

#import "LightViewController.h"

@interface LightViewController ()
@end

@implementation LightViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    AVCaptureDevice * device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([device hasTorch] && [device lockForConfiguration:NULL]) {
        if([device torchMode]==AVCaptureTorchModeOff) {
            [device setTorchMode:AVCaptureTorchModeOn];
            [self.view setBackgroundColor:[UIColor whiteColor]];
            [device unlockForConfiguration];
        }
        else if([device torchMode]==AVCaptureTorchModeOn) {
            [device setTorchMode:AVCaptureTorchModeOff];
            [self.view setBackgroundColor:[UIColor blackColor]];
            [device unlockForConfiguration];
        }
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [super dealloc];
}
@end
