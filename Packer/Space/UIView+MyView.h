//
//  UIView+MyView.h
//  Packer
//
//  Created by 1 on 16/5/20.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MyView)

+ (UILabel *)initWithFrame:(CGRect)frame
                      Font:(UIFont *)font
                 textColor:(UIColor *)textColor
           backgroundColor:(UIColor *)backgroundColor
             textAlignment:(NSTextAlignment)alignment
             lineBreakMode:(NSLineBreakMode)mode
             numberOfLines:(NSInteger)number
 adjustsFontSizeToFitWidth:(BOOL)adjustOrNot;


@end
