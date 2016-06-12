//
//  TestBaseViewController.h
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import "Car.h"
#import "Plane.h"
@interface TestBaseViewController : UIViewController
@property(nonatomic,strong)Car *car;
@property(nonatomic,strong)Plane *plane;
@end
