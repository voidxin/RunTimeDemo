//
//  Plane.h
//  RunTimeDemo
//
//  Created by voidxin on 16/6/12.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plane : NSObject
@property(nonatomic,copy)NSString *brand;
@property(nonatomic,copy)NSString *engine;
-(NSString *)planePowerTakeOff;
@end
