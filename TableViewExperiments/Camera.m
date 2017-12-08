//
//  Camera.m
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 05/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import "Camera.h"
#import <AVFoundation/AVFoundation.h>

@implementation Camera {
    NSArray <AVCaptureDevice *> *audioSources;
    NSArray <AVCaptureDevice *> *videoSources;
}
- (id)init
{
    self = [super init];
    
    if (!audioSources) {
        audioSources = [AVCaptureDevice devicesWithMediaType:AVMediaTypeAudio];
    }
    
    if (!videoSources) {
        videoSources = [[AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo] arrayByAddingObjectsFromArray:[AVCaptureDevice devicesWithMediaType:AVMediaTypeMuxed]];
    }
    
    self.audioSourceNames = [NSMutableArray new];
    [self.audioSourceNames addObject:@"No audio source"];
    for (AVCaptureDevice *device in audioSources) {
        [self.audioSourceNames addObject:device.localizedName];
    }
    
    self.videoSourceNames = [NSMutableArray new];
    [self.videoSourceNames addObject:@"No video source"];
    [self.videoSourceNames addObject:@"---"];
    [self.videoSourceNames addObject:@"Vivotek"];
    [self.videoSourceNames addObject:@"Custom RTSP"];
    [self.videoSourceNames addObject:@"---"];
    for (AVCaptureDevice *device in videoSources) {
        [self.videoSourceNames addObject:device.localizedName];
    }
    
    return self;
}

-(void)setSelectedVideoSourceIndex:(int)index {
    _selectedVideoSourceIndex = index;
    
    self.shouldShowAddressField = (index == 2 || index == 3);
    
    if (index > 4 && index < self.videoSourceNames.count+4) {
        self.uid = videoSources[index-5].uniqueID;
    } else {
        self.uid = @"";
    }
}


-(void)setType:(CameraType)type {
//    self.shouldShowAddressField = type == CameraTypeIpCam;
    _type = type;
}
@end
