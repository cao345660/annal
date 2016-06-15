//
//  Hex.m
//  Packer
//
//  Created by FadeAway on 16/5/31.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "Hex.h"

@implementation Hex

+(UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity{
    float redValue   = ((hexColor&0xFF0000) >> 16)/255.0f;
    float greenValue = ((hexColor&0x00FF00) >> 8)/255.0f;
    float blueValue  = ((hexColor&0x0000FF) >> 1)/255.0f;
    return [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:opacity];
}

@end
