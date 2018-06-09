//
//  ViewController.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "ViewController.h"
#import "BuildKitHeader.h"
#import "Cell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) NSArray  *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = @[@"快速创建label和button等基础控件",@"快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件",@"快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件快速创建label和button等基础控件",@"快速创建label和button等基础控件快速创建label和button等基础控件"];
    
    self.tableView = [UITableView build_tableViewWithFrame:self.view.bounds andDelegate:self andStyle:UITableViewStylePlain];
    [self.tableView registerClass:[Cell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - tableview delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    [cell setModel:self.dataArray[indexPath.row]];
    return cell.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    [cell setModel:self.dataArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
