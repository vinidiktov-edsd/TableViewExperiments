//
//  Camera.m
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 05/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import "Camera.h"
#import <AVFoundation/AVFoundation.h>

@implementation Camera
- (id)init
{
    self = [super init];
    
    
    NSArray *audioSources = [AVCaptureDevice devicesWithMediaType:AVMediaTypeAudio];
    self.audioSourceNames = [NSMutableArray new];
    [self.audioSourceNames addObject:@"Select audio source"];
    for (AVCaptureDevice *device in audioSources) {
        [self.audioSourceNames addObject:device.localizedName];
    }
    
    NSArray *videoSources = [[AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo] arrayByAddingObjectsFromArray:[AVCaptureDevice devicesWithMediaType:AVMediaTypeMuxed]];
    self.videoSourceNames = [NSMutableArray new];
    [self.videoSourceNames addObject:@"Select video source"];
    for (AVCaptureDevice *device in videoSources) {
        [self.videoSourceNames addObject:device.localizedName];
    }
    
    return self;
}


-(void)setType:(CameraType)type {
    self.shouldShowAddressField = type == CameraTypeIpCam;
    _type = type;
}
@end
