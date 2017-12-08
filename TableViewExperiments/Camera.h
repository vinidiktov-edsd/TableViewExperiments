//
//  Camera.h
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 05/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CameraType) {
    CameraTypeWebCam,
    CameraTypeIpCam
};

@interface Camera : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) CameraType type;
@property (nonatomic) NSString *address;
@property (nonatomic) NSString *uid;
@property (nonatomic) BOOL connected;
@property BOOL recording;
@property NSString *audioSourceId;
@property bool shouldShowAddressField;
@property (nonatomic) int selectedAudioSourceIndex;
@property (nonatomic) int selectedVideoSourceIndex;

@property (nonatomic) NSMutableArray <NSString *> *audioSourceNames;
@property (nonatomic) NSMutableArray <NSString *> *videoSourceNames;

@end
