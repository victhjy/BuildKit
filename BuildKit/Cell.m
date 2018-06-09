//
//  Cell.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "Cell.h"
#import "BuildKitHeader.h"
@implementation Cell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
}

- (void)createUI{
    self.titleLbl = [UILabel build_LabelWithFrame:CGRectMake(15, 15, kWidth - 30, 0) andText:@"" andTextColor:[UIColor blackColor] andFont:[UIFont systemFontOfSize:16] andAlignment:0 andlines:0 andSubView:self.contentView];
    self.detailLbl = [UILabel build_LabelWithFrame:CGRectMake(15, 0, kWidth - 30, 0) andText:@"" andTextColor:[UIColor blackColor] andFont:[UIFont systemFontOfSize:14] andAlignment:0 andlines:0 andSubView:self.contentView];
    
    self.lineV = [UIView build_viewWithFrame:CGRectMake(0, 0, kWidth, 1) andBGColor:[UIColor lightGrayColor] andCornerRadius:0 andSubV:self.contentView];
}

- (void)setModel:(NSString *)detailText {
    self.titleLbl.text = @"BuildKitBuildKitBuildKitBuildKitBuildKit";
    [self.titleLbl build_calculateHeight];
    
    self.detailLbl.text = detailText;
    [self.detailLbl build_calculateHeight];
    self.detailLbl.top = self.titleLbl.bottom + 10;
    
    self.cellHeight = self.detailLbl.bottom + 10;
    self.lineV.bottom = self.cellHeight;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
