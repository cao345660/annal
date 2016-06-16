//
//  HeaderZoom.h
//  Packer
//
//  Created by FadeAway on 16/6/16.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HeaderZoom : NSObject
@property (nonatomic,retain) UICollectionView *collectionView;
@property (nonatomic,retain) UIView *view;
@property (nonatomic, assign) CGFloat viewHeight;

/**
 *  实现下面的方法
 *
 *  @param collectionView  collectionView description
 *  @param view       头部视图
 *  @param viewHeight 头部视图的高度
 */
-(void)TableHeaderViewZoom:(UICollectionView*)tableView WithView:(UIView*)view AndViewHeight:(CGFloat)viewHeight;

- (void)scrollViewDidScroll:(UIScrollView*)scrollView;
@end
