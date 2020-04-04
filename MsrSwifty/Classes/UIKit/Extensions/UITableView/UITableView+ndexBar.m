//
//  UITableView+UITableView_IndexBar.m
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

#import "UITableView+IndexBar.h"
#import <UIKit/UIKit.h>

@implementation UITableView (IndexBar)

- (void)updateIndexBarFont:(UIFont *)font {
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:NSClassFromString(@"UITableViewIndex")]) {
            if ([subview respondsToSelector:@selector(setFont:)]) {
                [subview performSelector:@selector(setFont:) withObject:font];
                break;
            }
        }
    }
}

@end
