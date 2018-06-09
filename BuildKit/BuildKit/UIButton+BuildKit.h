//
//  UIButton+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ButtonAction)(UIButton *b);

@interface UIButton (BuildKit)



/**
 快速创建按钮并添加到subView

 @param frame frame
 @param title 按钮title
 @param titleColor 按钮title颜色
 @param titleFont 按钮title字体
 @param bgColor 按钮背景颜色
 @param cornerRadius 按钮圆角
 @param subView 父视图
 @return button
 */
+ (instancetype)buildBtnWitnFrame:(CGRect)frame andTitle:(NSString *)title TitleColor:(UIColor *)titleColor andTitleFont:(UIFont *)titleFont andBgColor:(UIColor *)bgColor andCornerRadius:(CGFloat)cornerRadius andSubV:(UIView *)subView;


/**
 以block的形式给按钮添加响应事件

 @param block 响应事件
 */
- (void)addTargetForAction:(ButtonAction)block;


@end
