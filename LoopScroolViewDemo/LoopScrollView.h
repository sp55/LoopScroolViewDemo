//
//  LoopScrollView.h
//  LoopScroolViewDemo
//
//  Created by admin on 16/4/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define kScreenWidth                        [UIScreen mainScreen].bounds.size.width
#define kScreenHeight                       [UIScreen mainScreen].bounds.size.height



@protocol LoopScrollViewDelegate <NSObject>
- (void)tapingCurrentIndex:(NSInteger)currentIndex ;
@end

@interface LoopScrollView : UIView

@property (nonatomic,weak) id <LoopScrollViewDelegate> delegate ;
@property (nonatomic) UIColor *color_pageControl ;  //非当前PageControl
@property (nonatomic) UIColor *color_currentPageControl ;//当前PageControl颜色



- (instancetype)initWithFrame:(CGRect)frame
                 andImageList:(NSArray *)imglist
                      canLoop:(BOOL)canLoop
                     duration:(NSInteger)duration ;

@end





@interface NSTimer (Addition)
- (void)pause ;
- (void)resume ;
@end