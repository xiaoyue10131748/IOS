//
//  PersonSelf.m
//  PersonSelf
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "PersonSelf.h"
#import "Student.h"
@implementation PersonSelf

- (id) init
{   // super调用父类的方法
    if (self = [super init]){
        s = [[Student alloc] init];
        NSLog(@"Student: %p", s);
    }
    return self;
}


- (NSString *) getName
{
    return name;
}

- (void) setName:(NSString *) _name
{
    name = _name;
    //self可以调用本类的方法
    [self setAge:14];
    NSLog(@"self class is : %@", [self class]);
    NSLog(@"super class is : %@", [self superclass]);
    NSLog(@"age: %d", [self getAge]);
}
- (int) getAge
{
    return age;
}

- (void) setAge:(int) _age
{
    age = _age;
}
@end
