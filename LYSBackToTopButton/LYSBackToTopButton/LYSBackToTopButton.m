//
//  LYSBackToTopButton.m
//  LYSBackToTopButton
//
//  Created by jk on 2017/3/8.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "LYSBackToTopButton.h"

@interface LYSBackToTopButton (){
    __weak UIScrollView *_scrollView;
}

@end

@implementation LYSBackToTopButton

- (instancetype)initWithFrame:(CGRect)frame scrollView:(UIScrollView *)scrollView{
    if (self = [super initWithFrame:frame]) {
        _scrollView = scrollView;
        [self config];
    }
    return self;
}

-(void)setShowBtnOffset:(CGFloat)showBtnOffset{
    _showBtnOffset = showBtnOffset;
    self.hidden = _scrollView.contentOffset.y < self.showBtnOffset;
}

#pragma mark - 配置
-(void)config{
    [_scrollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    [self addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - 监听scrollview的contentOffset属性
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    CGPoint point = [change[@"new"] CGPointValue];
    if (point.y < self.showBtnOffset) {
        self.hidden = YES;
    }else {
        self.hidden = NO;
    }
}

#pragma mark - 按钮被点击
-(void)btnClicked:(LYSBackToTopButton*)btn{
    [_scrollView setContentOffset:self.scrollToPoint animated:YES];
}

-(void)dealloc{
    [_scrollView removeObserver:self forKeyPath:@"contentOffset"];
}


@end
