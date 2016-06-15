//
//  Hex.h
//  Packer
//
//  Created by FadeAway on 16/5/31.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hex : UIColor
//颜色16进制转换

+ (UIColor *)colorWithHex:(long)hexColor
                    alpha:(float)opacity;;
@end
