//
//  Car.m
//  Car
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "Car.h"

@implementation Car
@synthesize carID, speed, name;
- (id) init
{
    if (self = [super init])
    {
     
    }
    return self;
}

- (id) initWithName: (NSString *) _name carSpeed :(float) _speed carID: (int) _cID
{
    if (self = [super init])
    {
    name = _name;
    speed = _speed;
    carID = _cID;

    }
    return self;
}

- (void) run
{
    NSLog(@"start run");
    NSLog(@"car's name is %@, car's speed : %.2f,", name, speed);
}
- ( NSString *) getName
{
    return name;
}

- (void) setName: ( NSString *) _name {
    name = _name;
}
@end
