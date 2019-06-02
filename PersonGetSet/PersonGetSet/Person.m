//
//  Person.m
//  PersonGetSet
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "Person.h"
//在类里面的全局变量
static int gCount = 0;

@implementation Person
@synthesize myNumber;

- (int) changeStaticValue
{
    gCount = 10;
    return gCount;
    
}
@end
