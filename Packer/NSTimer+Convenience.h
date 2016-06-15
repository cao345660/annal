//
//  NSTimer+Convenience.h
//  Packer
//
//  Created by 1 on 16/5/19.
//  Copyright © 2016年 Monk. All rights reserved.
// NSTimerBLock

#import <Foundation/Foundation.h>

typedef void(^MyVoidBlock)(void);

@interface NSTimer (Convenience)
/**
 *  Timer - Block版本
 *
 *  @param interval duration of callBlock
 *  @param repeats  repeat or not
 *  @param callBack call block
 *
 *  @return NSTimer obj
 */

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                    repeats:(BOOL)repeats
                                   callBack:(MyVoidBlock)callBack;

/**
 *  Timer - Block版本
 *
 *  @param interval interval duration of callBlock
 *  @param count    count times after callBack if count < 0 infinite calls
 *  @param callBack callBack call block
 *
 *  @return NSTimer obj
 */
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      count:(NSInteger)count
                                   callBack:(MyVoidBlock)callBack;

/**
 *  start Timer
 */

- (void)fireTimer;

/**
 *  stop Timer
 */

- (void)unFireTimer;




@end
