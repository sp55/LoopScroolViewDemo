//
//  ViewController.m
//  LoopScroolViewDemo
//
//  Created by admin on 16/4/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "LoopScrollView.h"


@interface ViewController ()<LoopScrollViewDelegate>


@end

@implementation ViewController

- (void)tapingCurrentIndex:(NSInteger)currentIndex
{
    NSLog(@"currently tapped picture's index is '%ld' ",(long)currentIndex) ;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    LoopScrollView *loopScroll = [[LoopScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight/3)
                                                              andImageList:@[@"01.jpg",@"02.jpg",@"03.jpg"]
                                                                   canLoop:YES
                                                                  duration:2.0] ;
    loopScroll.delegate = self ;
    loopScroll.color_pageControl        = [UIColor colorWithRed:250.0/255.0 green:219/255.0 blue:249/255.0 alpha:1] ;
    loopScroll.color_currentPageControl = [UIColor redColor] ;
    
    [self.view addSubview:loopScroll] ;
    
}

@end
