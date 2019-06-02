//
//  main.m
//  Shape
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth:6 andHeight: 7];
        NSLog(@"Rectangle : w = %d, h = %d", myRect.width, myRect.height);
        NSLog(@"Rectangle : p = %d, s = %d", [myRect perimeter ], [myRect area]);
        
        
        
        
    }
    
    return 0;
}
