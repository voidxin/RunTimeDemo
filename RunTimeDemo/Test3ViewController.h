//
//  Test3ViewController.h
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "TestBaseViewController.h"
/**
 *  拦截替换方法
 */
@interface Test3ViewController : TestBaseViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *plainAction;
@property (weak, nonatomic) IBOutlet UIButton *carAction;
- (IBAction)planePress:(id)sender;
- (IBAction)exchangePowerPress:(id)sender;
- (IBAction)changePowerPress:(id)sender;

- (IBAction)carPress:(id)sender;


@end
