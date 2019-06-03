//
//  main.m
//  Car
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Bmw.h"
#import "Person.h"
#import "Audi.h"
#import "Benz.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    Car *car = [[Car alloc] initWithName:@"小汽车" carSpeed: 100 carID:000];
    [car run];
    
  
    Car *audi =[[Audi alloc] initWithName:@"奥迪" carSpeed: 120 carID:111];
    [audi run];
    
    Car *benz =[[Benz alloc] initWithName:@"奔驰" carSpeed: 130 carID:222];
    
    [benz run];
    
    Car *bmw =[[Bmw alloc] initWithName:@"宝马" carSpeed: 140 carID:333];
    [bmw run];
    
    
    //处理动态方法调用NSObject
    //判断audi是不是Car类或他的成员
    if ([audi isKindOfClass:[Car class]])
    {
        NSLog(@"audi is kind of car");
    }
    
    if ([audi isMemberOfClass:[Car class]])
    {
        NSLog(@"audi is a member of car");
    }
    
    if ([car isMemberOfClass:[Car class]])
    {
        NSLog(@"car is a member of car");
    }
    
    if ([car respondsToSelector:@selector(run)])
    {
         NSLog(@"car reponds to run method");
    }
    // 动态绑定实现方法调用
//    SEL action;
//    action = @selector(run);
//    [car performSelector:action];
    
    // 动态绑定实现方法调用
    [car performSelector:@selector(run)];
    
    if ([Benz isSubclassOfClass:[car class]])
    {
        NSLog(@"Benz is subClass of car ");
    }
    
    //判断两个对象是不是同一类型
    if ([audi class] == [benz class])
    {
        NSLog(@"Benz and audi is the same class");
    }
    
    //oc 中异常处理
    @try {
      [car class] ;
    } @catch (NSException *exception) {
        NSLog(@"catch exception %@ %@", [exception name],[exception reason]);
    } @finally {
        NSLog(@"Code that gets executed whether or not an exception is thrown");
    }
    
    
    return 0;
    
}
