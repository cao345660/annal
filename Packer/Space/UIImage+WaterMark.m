//
//  UIImage+WaterMark.m
//  Packer
//
//  Created by 1 on 16/5/22.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "UIImage+WaterMark.h"

@implementation UIImage (WaterMark)

- (UIImage *)imageWithWaterMask:(UIImage*)mask
                         inRect:(CGRect)rect{
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 40000
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 4.0){
        // 0.0 for scale means "scale for device's main screen".
        UIGraphicsBeginImageContextWithOptions([self size], NO, 0.0);
    }
#else
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 4.0){
        UIGraphicsBeginImageContext([self size]);
    }
#endif
    //origin pic
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    //watermark
    [mask drawInRect:rect];
    UIImage *newPic = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newPic;
}


@end
