//
//  Test1ViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/7.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "Test1ViewController.h"

@interface Test1ViewController ()

@property(nonatomic,copy)NSArray *brandArray;
@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text=[self.car brand];
   
}


- (NSArray *)brandArray{
    if (!_brandArray) {
        _brandArray=@[@"Benz",@"Honda",@"BMW",@"Lamborghini",@"Ferrari",@"Porsche",@"audio"];
    }
    return _brandArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



- (IBAction)btnAction:(id)sender {
    
    [self changeCar];
}

-(void)changeCar{
    unsigned int number=0;
    __weak typeof(self) weakSelf=self;
    Ivar *ivar=class_copyIvarList([self.car class], &number);
    for (int i=0; i<number; i++) {
        Ivar var=ivar[i];
        const char *varName=ivar_getName(var);
        NSString *propertyName=[NSString stringWithUTF8String:varName];
        int y=arc4random()%7;
        if ([propertyName isEqualToString:@"_brand"]) {
            __strong typeof(weakSelf) strongSelf=weakSelf;
            object_setIvar(self.car, var, strongSelf.brandArray[y]);
            break;
        }
    }
    
    self.label.text=self.car.brand;
}
@end
