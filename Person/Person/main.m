//
//  main.m
//  Person
//
//  Created by xiao yue on 5/29/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
//    Person *person; //nil
//    person=[[Person alloc] init]; //0x020344
//    NSLog(@"person: %p", person);
    
    
    
    //内存分析
    Person *person=[[Person alloc] initWithAge:30 idenfity:2323];
    NSLog(@"1persion.age: %d", [person getAge]);
    int age = 28;
    [person setAge:28];
    NSLog(@"2persion.age: %d", [person getAge]);
    [person setAge:++age];
    NSLog(@"3persion.age: %d", [person getAge]);
    return 0;
}
