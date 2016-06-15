//
//  UIImage+WaterMark.h
//  Packer
//
//  Created by 1 on 16/5/22.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WaterMark)

// draw a pic's warterMark
- (UIImage *)imageWithWaterMask:(UIImage*)mask
                         inRect:(CGRect)rect;

@end
