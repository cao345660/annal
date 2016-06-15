//
//  MonkTools.m
//  Packer
//
//  Created by 1 on 16/5/22.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "MonkTools.h"

@implementation MonkTools
+ (BOOL)isFistStartApp{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *key = @"appStartNumer";
    NSString *number = [userDefaults objectForKey:key];
    if (number!=nil) {
        NSInteger startNumer = [number integerValue];
        NSString *str = [NSString stringWithFormat:@"%ld",++startNumer];
        [userDefaults setObject:str forKey:key];
        [userDefaults synchronize];
        return NO;
    }else{

        NSLog(@"用户是第一次启动");
        [userDefaults setObject:@"1" forKey:key];
        [userDefaults synchronize];
        return YES;
    }

}
@end
