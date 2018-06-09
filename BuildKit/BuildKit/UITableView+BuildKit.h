//
//  UITableView+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (BuildKit)


/**
 快速创建tableview

 @param cgrect frame
 @param caller datasoure和delegate
 @param style UITableViewStyle
 @return tableview
 */
+(instancetype)build_tableViewWithFrame:(CGRect)cgrect andDelegate:(id)caller andStyle:(UITableViewStyle) style;

@end
