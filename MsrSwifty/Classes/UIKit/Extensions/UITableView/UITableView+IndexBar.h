//
//  UITableView+UITableView_IndexBar.h
//  MsrSwifty
//
//  Created by monsoir on 4/4/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (IndexBar)

/// 修改 table view 索引栏的字体
/// @param font 目标字体
- (void)updateIndexBarFont:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
