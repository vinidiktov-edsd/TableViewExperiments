//
//  EditCameraController.h
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 04/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class AppDelegate;

@interface EditCameraController : NSWindowController
@property bool cancelled;
-(void)edit:(AppDelegate *)sender;
-(IBAction)done:(NSButton *)sender;
- (IBAction)cancel:(NSButton *)sender;
- (IBAction)segControlClicked:(id)sender;
@property (weak) IBOutlet NSPopUpButton *videoSourcesPopup;
@property (weak) IBOutlet NSView *IPCamView;
@end
