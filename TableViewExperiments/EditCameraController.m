//
//  EditCameraController.m
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 04/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import "EditCameraController.h"
#import "AppDelegate.h"


@interface EditCameraController ()

@end

@implementation EditCameraController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

-(void)edit:(AppDelegate *)sender {
    NSWindow *window = self.window;
    
    [NSApp beginSheet:window modalForWindow:sender.window modalDelegate:self didEndSelector:nil contextInfo:nil];
    [NSApp runModalForWindow:window];
    [NSApp endSheet:window];
    [window orderOut:self];
}

-(IBAction)done:(NSButton *)sender {
    // save the values for later
//    var editFields = editForm.Cells;
//    List<NSString> objects = new List<NSString> {new NSString(editFields[FIRST_NAME].StringValue),
//        new NSString(editFields[LAST_NAME].StringValue),
//        new NSString(editFields[PHONE].StringValue)};
//
//    savedFields = NSMutableDictionary.FromObjectsAndKeys(objects.ToArray(),
//                                                         TestWindowController.Keys.ToArray());
    
    [NSApp stopModal];
}

- (IBAction)cancel:(NSButton *)sender {
    self.cancelled = true;
    [NSApp stopModal];
}

- (IBAction)segControlClicked:(id)sender {
    long clickedSegment = [sender selectedSegment];
    long clickedSegmentTag = [[sender cell] tagForSegment:clickedSegment];
    if (clickedSegmentTag == 0) {
        [self.videoSourcesPopup setHidden:NO];
        [self.IPCamView setHidden:YES];
    } else {
        [self.videoSourcesPopup setHidden:YES];
        [self.IPCamView setHidden:NO];
    }
}

@end
