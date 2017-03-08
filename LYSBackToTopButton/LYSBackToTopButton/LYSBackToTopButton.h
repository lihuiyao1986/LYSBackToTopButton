//
//  LYSBackToTopButton.h
//  LYSBackToTopButton
//
//  Created by jk on 2017/3/8.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import <UIKit/UIKit.h>

/***
 * 回到顶部的按钮
 *
 *
 ***/
@interface LYSBackToTopButton : UIButton

#pragma mark - 初始化方法
- (instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView;

#pragma mark - 设置滚动视图偏移量为多少时显示按钮,如果不设置默认为zero点
@property (nonatomic,assign) CGFloat showBtnOffset;

#pragma mark - 设置滚动视图滚动的偏移量坐标,如果不设置默认为zero(滚动到顶部)
@property (nonatomic,assign) CGPoint scrollToPoint;


@end
