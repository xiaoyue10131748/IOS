//
//  Person.m
//  PersonAlloc
//
//  Created by xiao yue on 6/2/19.
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

- (void) changeAge:(int) _age
{
    _age = 38;
    NSLog(@"AGE: %d", _age);
}

- (void) changeInfo:(Person *) _person
{
    _person = [[Person alloc] initWithAge: 22 idenfity: 2134353];
    NSLog(@"_Person:%p", _person);
}

- (void) changed:(Person *) _person
{
    [_person setAge:22];
}

//两个方法是否相同与参数类型和返回值无关

//- (void) changed:(Person *) _person
//{
//
//}
@end
