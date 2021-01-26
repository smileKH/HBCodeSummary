//
//  HBUserButtonVC.m
//  HBCodeSummary
//
//  Created by 胡明波 on 2021/1/26.
//  Copyright © 2021 mingsishui. All rights reserved.
//

#import "HBUserButtonVC.h"

@interface HBUserButtonVC ()

@end

@implementation HBUserButtonVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //button的属性
    [self buttonProperty];
}
//button的属性
-(void)buttonProperty{
    //添加一个label
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [btn setTitle:@"我是一个button" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    btn.backgroundColor = [UIColor redColor];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn addTarget:self action:@selector(clckButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
//点击事件
-(void)clckButton:(UIButton *)btn{
    NSLog(@"我是按钮，我被点击了");
}


@end
