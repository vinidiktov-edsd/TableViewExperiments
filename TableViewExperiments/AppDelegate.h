//
//  AppDelegate.h
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 01/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "Camera.h"
#import "EditCameraController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    EditCameraController *editCameraController;

}
@property (weak) IBOutlet NSWindow *window;
@property (nonatomic) NSMutableArray <Person *> *peopleArray;
@property (nonatomic) NSMutableArray <Camera *> *cameras;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSArrayController *demoArrayController;
- (IBAction)buttonPressed:(NSButton *)sender;


@end

