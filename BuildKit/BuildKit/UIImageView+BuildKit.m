//
//  UIImageView+BuildKit.m
//  BuildKit
//
//  Created by inception on 2018/6/9.
//  Copyright © 2018年 hjy. All rights reserved.
//

#import "UIImageView+BuildKit.h"
#import "UIView+BuildKit.h"
@implementation UIImageView (BuildKit)

- (void)build_calculateWidth {
    if (!self.image) {
        return;
    }
    UIImage *image = self.image;
    
    self.width = self.height * (image.size.width / image.size.height);
}

- (void)build_calculateHeight {
    if (!self.image) {
        return;
    }
    UIImage *image = self.image;
    
    self.height = self.width * (image.size.height / image.size.width);
}

@end
