//
//  UITableView+BuildKit.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "UITableView+BuildKit.h"

@implementation UITableView (BuildKit)

+(instancetype)build_tableViewWithFrame:(CGRect)cgrect andDelegate:(id)caller andStyle:(UITableViewStyle) style{
    UITableView *resultTableView = [[UITableView alloc] initWithFrame:cgrect style:style];
    resultTableView.dataSource = caller;
    resultTableView.delegate = caller;
    resultTableView.tableFooterView = [UIView new];
    resultTableView.backgroundColor = [UIColor whiteColor];
    resultTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    return resultTableView;
}

@end
