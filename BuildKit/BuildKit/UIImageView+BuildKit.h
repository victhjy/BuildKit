//
//  UIImageView+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (BuildKit)


/**
 根据图片高度计算宽度
 */
- (void)build_calculateWidth;

/**
 根据图片宽度计算高度
 */
- (void)build_calculateHeight;

@end
