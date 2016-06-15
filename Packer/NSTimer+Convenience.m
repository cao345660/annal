//
//  NSTimer+Convenience.m
//  Packer
//
//  Created by 1 on 16/5/19.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "NSTimer+Convenience.h"

@implementation NSTimer (Convenience)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                    repeats:(BOOL)repeats
                                    callBack:(MyVoidBlock)callBack{
    return [NSTimer scheduledTimerWithTimeInterval:interval
                                            target:self
                                          selector:@selector(onTimerUpdateBlock:)
                                          userInfo:[callBack copy]
                                           repeats:repeats];
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval count:(NSInteger)count callBack:(MyVoidBlock)callBack{
    NSDictionary *userInfo = @{@"callBack":[callBack copy],
                               @"count":@(count)};
    return [NSTimer scheduledTimerWithTimeInterval:interval
                                            target:self
                                          selector:@selector(onTimerUpdateCountBlock:)
                                          userInfo:userInfo
                                           repeats:YES];
}

+ (void)onTimerUpdateBlock:(NSTimer *)timer{
    MyVoidBlock block = timer.userInfo;
    if (block) {
        block();
    }
}


+ (void)onTimerUpdateCountBlock:(NSTimer *)timer{
    static NSUInteger currentCount = 0;
    NSDictionary *userInfo = timer.userInfo;
    MyVoidBlock callBack = userInfo[@"callBack"];
    NSNumber *count = userInfo[@"count"];
    if (count.integerValue <= 0) {
        if (callBack) {
            callBack();
        }
    }else{
        if (currentCount < count.integerValue) {
            currentCount++;
            if (callBack) {
                callBack();
            }
        }else{
            currentCount = 0;
            
            [timer unFireTimer];
            [timer invalidate];
            timer = nil;
        }
    }
}

- (void)fireTimer{
    [self setFireDate:[NSDate distantPast]];
}

- (void)unFireTimer{
    [self setFireDate:[NSDate distantFuture]];
}


@end
