//
//  main.m
//  Shaprinherit
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Square *sq = [[Square alloc] init];
        [sq setSide:5];
        NSLog(@"s = %d", [sq area]);
        NSLog(@"p = %d", [sq perimeter]);
        
    }
    return 0;
}
