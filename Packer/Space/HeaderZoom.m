//
//  HeaderZoom.m
//  Packer
//
//  Created by FadeAway on 16/6/16.
//  Copyright © 2016年 Monk. All rights reserved.
//

#import "HeaderZoom.h"

@implementation HeaderZoom

@synthesize collectionView = _collectionView;
@synthesize view = _view;

-(void)TableHeaderViewZoom:(UICollectionView *)tableView WithView:(UIView *)view AndViewHeight:(CGFloat)viewHeight{
    
    _collectionView = tableView;
    _view = view;
    _viewHeight = viewHeight;
    //利用内嵌添加头部视图
    self.view.frame = CGRectMake(0, -_viewHeight, [UIScreen mainScreen].bounds.size.width, _viewHeight);
    //添加到TableView之上
    [self.collectionView addSubview:self.view];
    //放到图层的最后
    [self.collectionView sendSubviewToBack:self.view];
    //修改内嵌值
    self.collectionView.contentInset = UIEdgeInsetsMake(_viewHeight, 0, 0, 0);
}

- (void)scrollViewDidScroll:(UIScrollView*)scrollView
{
    if (scrollView.contentOffset.y < -_viewHeight) {
        //往上移动
        self.view.layer.position = CGPointMake([UIScreen mainScreen].bounds.size.width / 2.0,  scrollView.contentOffset.y / 2.0);
        //设置一个放大系数
        CGFloat scale = fabs(scrollView.contentOffset.y) / _viewHeight;
        
        //触发放大缩小
        self.view.transform = CGAffineTransformMakeScale(scale, scale);
    }else{
        
    }
}


@end
