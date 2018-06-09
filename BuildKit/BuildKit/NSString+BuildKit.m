//
//  NSString+BuildKit.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "NSString+BuildKit.h"

@implementation NSString (BuildKit)

- (NSURL *)toUrl{
    return [NSURL URLWithString:self];
}

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


@end
