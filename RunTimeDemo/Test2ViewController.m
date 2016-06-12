//
//  Test2ViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/7.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    class_addMethod([self.car class], @selector(printParameter), (IMP)printParameter, "v@:");
    
    [self.button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
}

void printParameter(id self,SEL _cmd){
    NSLog(@"5.2v10自然进气发动机610匹马力4轮驱动，0-100加速3.2s");
   
}

-(void)printParameter{
    
}

-(void)buttonAction{
    if ([self.car performSelector:@selector(printParameter)]) {
        [self.car performSelector:@selector(printParameter)];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
