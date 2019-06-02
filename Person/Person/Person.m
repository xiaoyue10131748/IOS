//
//  Person.m
//  Person
//
//  Created by xiao yue on 5/29/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "Person.h"

@implementation Person


- (id) init
{
    if (self = [super init]){
        
    }
    return self;
}

- (id) initWithAge:(int)_age idenfity:(int) _identify
{
    if (self = [super init]){
        age = _age;
        identify = _identify;
    }
    return self;
}

- (int) getIdentify
{
    return identify;
}

- (int) getAge
{
    return age;
}

- (void) setAge:(int)_age
{
    age = _age;
}

@end
