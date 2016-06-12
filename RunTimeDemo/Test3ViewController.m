//
//  Test3ViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "Test3ViewController.h"

@interface Test3ViewController ()

@end

@implementation Test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.text=@"ready? go";
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)planePress:(id)sender {
    self.textView.text=[self.plane planePowerTakeOff];
}

- (IBAction)exchangePowerPress:(id)sender {
    Method carMethod=class_getInstanceMethod([self.car class], @selector(carPowerTakeOff));
    Method planeMethod=class_getInstanceMethod([self.plane class], @selector(planePowerTakeOff));
    method_exchangeImplementations(carMethod, planeMethod);
    self.textView.text=@"power is Exchanged";
}
- (IBAction)changePowerPress:(id)sender {
    Method carMethod=class_getInstanceMethod([self.car class], @selector(carPowerTakeOff));
    Method lannboMethod=class_getInstanceMethod([self class], @selector(changePower));
    method_exchangeImplementations(carMethod, lannboMethod);
     self.textView.text=@"car power is changed";
}

-(NSString *)changePower{
    return @"我是兰博基尼超跑，我的动力比飞机还强，我到香港只需8分钟";
}

- (IBAction)carPress:(id)sender {
      self.textView.text=[self.car carPowerTakeOff];
}
@end
