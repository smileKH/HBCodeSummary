//
//  HBUserLabelVC.m
//  HBCodeSummary
//
//  Created by 胡明波 on 2021/1/26.
//  Copyright © 2021 mingsishui. All rights reserved.
//

#import "HBUserLabelVC.h"

@interface HBUserLabelVC ()
@property(nonatomic,strong)UILabel *scrollerLabel;
@property(nonatomic,strong)NSArray *dataArr;
@property (nonatomic,assign) NSInteger index ;
@end

@implementation HBUserLabelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //label的属性
    [self labelProperty];
    //label高度计算
    [self labelHeightCalculate];
    //label渐变颜色
    [self labelgradualColor];
    //快速添加一个label
    [self speedinessAddLabel];
    //添加一个滚动的label
    [self addScrollerLabel];
}

//label的属性
-(void)labelProperty{
    //添加一个label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 20)];
    label.text = @"我是一个label";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:14];
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];
}
//label的高度计算
-(void)labelHeightCalculate{
    
}
//label渐变颜色
-(void)labelgradualColor{
    
}
//快速添加一个label
-(void)speedinessAddLabel{
    
}
//添加一个滚动的label
-(void)addScrollerLabel{
    _index = 0 ;
    self.dataArr = @[@"门前有座山",@"山上有座庙",@"庙里有个老和尚",@"老和尚原来是程序员"];
    self.scrollerLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, 100, 20)];
    self.scrollerLabel.textAlignment = NSTextAlignmentCenter;
    self.scrollerLabel.textColor = [UIColor redColor];
    self.scrollerLabel.font = [UIFont systemFontOfSize:14];
    self.scrollerLabel.text = self.dataArr[0];
    [self.view addSubview:self.scrollerLabel];
    //计时器
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scroll) userInfo:nil repeats:YES];
}
-(void)scroll{
    
    _index += 1;
    if (_index == self.dataArr.count) {
        _index = 0;
    }
    

    CATransition *tran = [CATransition animation];
    tran.type = kCATransitionPush;
    tran.subtype = kCATransitionFromTop;
    [self.scrollerLabel.layer addAnimation:tran forKey:@"trans"];

    NSInteger idx = _index;
    self.scrollerLabel.text =self.dataArr[idx];

}
@end
