//
//  UIView+CaptureView.m
//  Packer
//
//  Created by 1 on 16/5/22.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "UIView+CaptureView.h"

@implementation UIView (CaptureView)
- (UIImage*)captureView:(UIView *)existView{
    CGRect rect = existView.frame;
    if ([existView isKindOfClass:[UIScrollView class]]) {
        rect.size = ((UIScrollView *)existView).contentSize;
    }
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [existView.layer renderInContext:context];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
