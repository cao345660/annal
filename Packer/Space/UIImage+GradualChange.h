//
//  UIImage+GradualChange.h
//  Packer
//
//  Created by 1 on 16/5/22.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GradualChange)
- (UIImage *)imageWithBackgroundColor:(UIColor *)bgColor
                           shadeAlpha1:(CGFloat)alpha1
                           shadeAlpha2:(CGFloat)alpha2
                           shadeAlpha3:(CGFloat)alpha3
                           shadowColor:(UIColor *)shadowColor
                          shadowOffset:(CGSize)shadowOffset
                            shadowBlur:(CGFloat)shadowBlur;
@end
