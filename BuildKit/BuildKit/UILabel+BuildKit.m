//
//  UILabel+BuildKit.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "UILabel+BuildKit.h"
#import "UIView+BuildKit.h"
#import "NSString+BuildKit.h"
@implementation UILabel (BuildKit)

+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor andFont:(UIFont *)textFont andAlignment:(NSTextAlignment)alignment andlines:(NSInteger)line{
    
    UILabel *resultLbl = [[UILabel alloc] initWithFrame:cgrect];
    resultLbl.text = text;
    resultLbl.textColor = textColor?:[UIColor whiteColor];
    resultLbl.font = textFont?:[UIFont systemFontOfSize:15];
    resultLbl.textAlignment = alignment;
    resultLbl.numberOfLines = line;
    return resultLbl;
}

+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor andFont:(UIFont *)textFont andAlignment:(NSTextAlignment)alignment andlines:(NSInteger)line andSubView:(UIView *)subV{
    UILabel *resultLbl = [self build_LabelWithFrame:cgrect andText:text andTextColor:textColor andFont:textFont andAlignment:alignment andlines:line];
    if (subV) {
        [subV addSubview:resultLbl];
    }
    return resultLbl;
}

+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor{
    
    return [self build_LabelWithFrame:cgrect andText:text andTextColor:textColor andFont:[UIFont systemFontOfSize:15] andAlignment:0 andlines:0];
}

- (void)build_calculateHeight {
    CGSize size = [self.text sizeWithFont:self.font maxSize:CGSizeMake(self.width, CGFLOAT_MAX)];
    self.height = size.height;
}

- (void)build_calculateWidth {
    CGSize size = [self.text sizeWithFont:self.font maxSize:CGSizeMake(CGFLOAT_MAX, self.height)];
    self.height = size.height;
}

- (void)build_calculateWidthSingleLine {
    CGSize size = [self.text sizeWithFont:self.font maxSize:CGSizeMake(CGFLOAT_MAX, 20)];
    self.width = size.width;
}


@end
