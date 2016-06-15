//
//  UIView+MyView.m
//  Packer
//
//  Created by 1 on 16/5/20.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "UIView+MyView.h"

@implementation UIView (MyView)

+ (UILabel *)initWithFrame:(CGRect)frame
                      Font:(UIFont *)font
                 textColor:(UIColor *)textColor
           backgroundColor:(UIColor *)backgroundColor
             textAlignment:(NSTextAlignment)alignment
             lineBreakMode:(NSLineBreakMode)mode
             numberOfLines:(NSInteger)number
 adjustsFontSizeToFitWidth:(BOOL)adjustOrNot{
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = frame;
    label.font = font;
    label.textColor = textColor;
    label.backgroundColor = backgroundColor;
    label.textAlignment = alignment;
    label.lineBreakMode = mode;
    label.numberOfLines = number;
    label.adjustsFontSizeToFitWidth = adjustOrNot;
    return label;
}

@end
