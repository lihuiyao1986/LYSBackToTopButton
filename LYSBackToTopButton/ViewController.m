//
//  ViewController.m
//  LYSBackToTopButton
//
//  Created by jk on 2017/3/8.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "LYSBackToTopButton.h"

@interface ViewController ()

@property(nonatomic)UIScrollView *scrollview;

@property(nonatomic)LYSBackToTopButton *backButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.scrollview];
    [self.view addSubview:self.backButton];
    [self.view bringSubviewToFront:self.backButton];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIScrollView*)scrollview{
    if (!_scrollview) {
        _scrollview = [[UIScrollView alloc]initWithFrame:self.view.bounds];
        _scrollview.backgroundColor = [UIColor greenColor];
        _scrollview.contentSize = CGSizeMake(self.view.frame.size.width, self.view.bounds.size.height * 3);
    }
    return _scrollview;
}

-(LYSBackToTopButton*)backButton{
    if (!_backButton) {
        _backButton = [[LYSBackToTopButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width - 60 - 20, self.view.bounds.size.height - 60 - 20, 60, 60) scrollView:self.scrollview];
        _backButton.backgroundColor =[UIColor redColor];
        _backButton.layer.cornerRadius = 30;
        _backButton.layer.borderColor = [UIColor greenColor].CGColor;
        _backButton.layer.masksToBounds = YES;
        _backButton.showBtnOffset = 40.f;
        [_backButton setTitle:@"回顶部" forState:UIControlStateNormal];
    }
    return _backButton;
}


@end
