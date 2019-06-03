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
    
    

    
    return 0;
    
}
