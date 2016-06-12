//
//  Test1ViewController.h
//  RunTimeDemo
//
//  Created by voidxin on 16/6/7.
//  Copyright © 2016年 wugumofang. All rights reserved.
//
/**
 *  变量
 */
#import <UIKit/UIKit.h>
#import "TestBaseViewController.h"
@interface Test1ViewController : TestBaseViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)btnAction:(id)sender;

@end
