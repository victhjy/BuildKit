//
//  UIView+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^GestureActionBlock)(UIGestureRecognizer *gestureRecoginzer);
@interface UIView (BuildKit)

@property (nonatomic) CGFloat left;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat top;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  size;        ///< Shortcut for frame.size.


/**
 快速创建view

 @param cgrect frame
 @param bgColor 背景色
 @param cornerRadius 圆角
 @param subView 父视图
 @return view
 */
+ (instancetype)build_viewWithFrame:(CGRect)cgrect andBGColor:(UIColor *)bgColor andCornerRadius:(CGFloat)cornerRadius andSubV:(UIView *)subView;

/**
 给view添加点击手势的响应事件

 @param block 响应事件
 */
- (void)addTapActionWithBlock:(GestureActionBlock)block;

@end
