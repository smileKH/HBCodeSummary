//
//  ViewController.m
//  HBCodeSummary
//
//  Created by 胡明波 on 2021/1/26.
//  Copyright © 2021 mingsishui. All rights reserved.
//

#import "ViewController.h"
#import "HBUserLabelVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"代码总结";
    // Do any additional setup after loading the view.
    //总结代码
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
//点击按钮
-(void)clickBtn{
    HBUserLabelVC *vc = [[HBUserLabelVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
