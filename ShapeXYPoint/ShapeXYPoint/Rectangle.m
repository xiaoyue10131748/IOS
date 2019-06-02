//
//  Rectangle.m
//  Shaprinherit
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"
@implementation Rectangle
@synthesize width, height;
- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return (width + height) * 2;
}

- (void) setWidth:(int) w andHeight: (int) h
{
    width = w;
    height = h;
}

- (XYPoint *) origin
{
    return origin;
}

- (void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}

@end
