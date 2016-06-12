//
//  UIButton+runtime.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "UIButton+runtime.h"
#import <objc/runtime.h>
@implementation UIButton (runtime)
+ (void)load{
    static dispatch_once_t onceManager;
    dispatch_once(&onceManager, ^{
        Class customerClass=[self class];
        SEL oriSEL=@selector(sendAction:to:forEvent:);
        Method oriMethod=class_getInstanceMethod(customerClass, oriSEL);
        
        SEL customerSEL=@selector(customerAction:to:forEvent:);
        Method customerMethod=class_getInstanceMethod(customerClass, customerSEL);
        
        BOOL isSuccess=class_addMethod(customerClass, oriSEL, method_getImplementation(customerMethod), method_getTypeEncoding(customerMethod));
        if (isSuccess) {
            class_replaceMethod(customerClass, customerSEL, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
        }else{
            method_exchangeImplementations(oriMethod, customerMethod);
        }
    });
}
-(void)customerAction:(SEL)action to:target forEvent:(UIEvent *)event{
    NSLog(@"我是披着奔驰外观的众泰,众泰汽车，实现您的豪车梦，哈哈哈");
    [self customerAction:action to:target forEvent:event];
}
@end
