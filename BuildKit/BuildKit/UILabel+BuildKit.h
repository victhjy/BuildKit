//
//  UILabel+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (BuildKit)


/**
 快速创建label

 @param cgrect frame
 @param text 文字
 @param textColor 文字颜色
 @param textFont 字号
 @param alignment 对齐方式
 @param line 行数
 @return label
 */
+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor andFont:(UIFont *)textFont andAlignment:(NSTextAlignment)alignment andlines:(NSInteger)line;


/**
 快速创建label，直接添加到父视图

 @param cgrect frame
 @param text 文字
 @param textColor 文字颜色
 @param textFont 字号
 @param alignment 对齐方式
 @param line 行数
 @param subV 父视图
 @return label
 */
+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor andFont:(UIFont *)textFont andAlignment:(NSTextAlignment)alignment andlines:(NSInteger)line andSubView:(UIView *)subV;


/**
 快速创建label，默认字号15，左对齐，自动高度

 @param cgrect frame
 @param text 文字
 @param textColor 文字颜色
 @return label
 */
+ (instancetype)build_LabelWithFrame:(CGRect)cgrect andText:(NSString *)text andTextColor:(UIColor *)textColor;


/**
 给定宽度，计算label的高度
 */
- (void)build_calculateHeight;


/**
 给定高度，计算label的宽度
 */
- (void)build_calculateWidth;


/**
 计算单行label的宽度
 */
- (void)build_calculateWidthSingleLine;

@end
