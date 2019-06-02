//
//  Square.m
//  Shaprinherit
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import "Square.h"

@implementation Square

- (void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}
- (int) side
{
    return width;
}

@end
