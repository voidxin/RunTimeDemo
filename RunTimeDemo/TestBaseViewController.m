//
//  TestBaseViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "TestBaseViewController.h"

@interface TestBaseViewController ()

@end

@implementation TestBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Car *)car{
    if (!_car) {
        _car=[[Car alloc]init];
        _car.brand=@"Benz";
    }
    return _car;
}

- (Plane *)plane{
    if (!_plane) {
        _plane=[[Plane alloc]init];
        _plane.brand=@"波音737";
    }
    return _plane;
}

@end
