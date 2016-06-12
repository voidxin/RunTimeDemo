//
//  Test4ViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "Test4ViewController.h"
#import "UIButton+runtime.h"
@interface Test4ViewController ()

@end

@implementation Test4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.refitMyCar addTarget:self action:@selector(printBrandAction) forControlEvents:UIControlEventTouchUpInside];
}


-(void)printBrandAction{
    NSLog(@"哈哈哈，我是奔驰");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
