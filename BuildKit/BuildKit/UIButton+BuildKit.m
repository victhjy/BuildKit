//
//  UIButton+BuildKit.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "UIButton+BuildKit.h"
#import <objc/runtime.h>


static char kHandlerBlockKey;

@implementation UIButton (BuildKit)

+(instancetype)buildBtnWitnFrame:(CGRect)frame andTitle:(NSString *)title TitleColor:(UIColor *)titleColor andTitleFont:(UIFont *)titleFont andBgColor:(UIColor *)bgColor andCornerRadius:(CGFloat)cornerRadius andSubV:(UIView *)subView{
    
    if (!titleColor) {
        titleColor = [UIColor blackColor];
    }
    if (!bgColor) {
        bgColor = [UIColor whiteColor];
    }
    if (!titleFont) {
        titleFont = [UIFont systemFontOfSize:14];
    }
    
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setBackgroundColor:bgColor];
    btn.titleLabel.font = titleFont;
    if (cornerRadius > 0) {
        btn.layer.cornerRadius = cornerRadius;
        btn.layer.masksToBounds = YES;
    }
    
    if (subView) {
        [subView addSubview:btn];
    }
    
    return btn;
}


-(void)addtargetForAction:(ButtonAction)block{
    if (!self.block) {
        self.block = block;
    }
    
    [self addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClicked:(UIButton *)sender {
    if (self.block) {
        self.block(self);
    }
}

- (void)setBlock:(ButtonAction)block {
    objc_setAssociatedObject(self, &kHandlerBlockKey, block, OBJC_ASSOCIATION_COPY);
}

-(ButtonAction)block{
    return objc_getAssociatedObject(self, &kHandlerBlockKey);
}


@end
