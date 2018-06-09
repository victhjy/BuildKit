//
//  NSString+BuildKit.h
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (BuildKit)


/**
 string快速转NSUrl

 @return url
 */
- (NSURL *)toUrl;

/**
 根据字体和最大size计算合适的size

 @param font 当前字体
 @param maxSize 最大字体
 @return 计算后的size
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

@end
