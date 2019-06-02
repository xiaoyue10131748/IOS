//
//  main.m
//  ShapeXYPoint
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY: 200];
        [myRect setWidth: 6 andHeight: 7];
        myRect.origin = myPoint;
        NSLog(@"rect w = %d, h = %d",myRect.width, myRect.height);
        NSLog(@"origin x = %d, y = %d",myRect.origin.x, myRect.origin.y);
        NSLog(@"area = %d, periemter = %d",[myRect area], [myRect perimeter]);
        
        
        
    }
    
    return 0;
}
