//
//  Cell.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UITableViewCell

@property(nonatomic,assign) CGFloat cellHeight;
@property(nonatomic, strong) UIView *lineV;

@property(nonatomic,strong) UILabel *titleLbl;
@property(nonatomic,strong) UILabel *detailLbl;

- (void)setModel:(NSString *)detailText;

@end
