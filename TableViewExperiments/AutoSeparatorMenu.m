//
//  AutoSeparatorMenuItem.m
//  TableViewExperiments
//
//  Created by Alexei Vinidiktov on 08/12/2017.
//  Copyright © 2017 EDISON LLC. All rights reserved.
//

#import "AutoSeparatorMenu.h"

@implementation AutoSeparatorMenu
- (NSMenuItem*)addItemWithTitle:(NSString*)aString action:(SEL)aSelector keyEquivalent:(NSString*)keyEquiv
{
    if ([aString isEqualToString:@"---"])
    {
        NSMenuItem *separator = [NSMenuItem separatorItem];
        [self addItem:separator];
        return separator;
    }
    return [super addItemWithTitle:aString action:aSelector keyEquivalent:keyEquiv];
}


- (NSMenuItem*)insertItemWithTitle:(NSString*)aString action:(SEL)aSelector keyEquivalent:(NSString*)keyEquiv atIndex:(NSInteger)index
{
    if ([aString isEqualToString:@"---"])
    {
        NSMenuItem *separator = [NSMenuItem separatorItem];
        [self insertItem:separator atIndex:index];
        return separator;
    }
    return [super insertItemWithTitle:aString action:aSelector keyEquivalent:keyEquiv atIndex:index];
}
@end
