//
//  AppDelegate.m
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 01/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import "AppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self setupPeopleArray];
    [self setupCameras];
}

-(void)setupCameras {
    self.cameras = [NSMutableArray array];
    
    Camera *temp = [Camera new];
    temp.name = @"IP Camera One";
    temp.address = @"rtsp://ipaddress.com";
    temp.type = CameraTypeIpCam;
    temp.connected = true;
    temp.uid = @"";
    [self.cameras addObject:temp];
    
    temp = [Camera new];
    temp.name = @"Web Camera One";
    temp.address = @"";
    temp.type = CameraTypeWebCam;
    temp.connected = true;
    temp.uid = @"This is the uid of the camera";
    [self.cameras addObject:temp];
    
    [self.demoArrayController rearrangeObjects];
}

-(void)setupPeopleArray {
    self.peopleArray = [NSMutableArray array];
    //    for (int i=0 ; i <= 10 ; i++)
    {
        Person *temp = [Person new];
        temp.firstName = @"Alex";
        temp.lastName = @"Brown";
        temp.email = @"alex@brown.com";
        [self.peopleArray addObject:temp];
        
        temp = [Person new];
        temp.firstName = @"Lara";
        temp.lastName = @"Croft";
        temp.email = @"lara@croft.com";
        [self.peopleArray addObject:temp];
        
        temp = [Person new];
        temp.firstName = @"Sarah";
        temp.lastName = @"Smith";
        temp.email = @"sarah@smith.com";
        [self.peopleArray addObject:temp];
    }
    [self.demoArrayController rearrangeObjects];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)buttonPressed:(NSButton *)sender {
    
    editCameraController =[[EditCameraController alloc] initWithWindowNibName:@"EditCameraController"];
    [editCameraController edit:self];
}
@end
