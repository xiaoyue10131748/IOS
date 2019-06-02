//
//  main.m
//  ClassAB
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    ClassB  *b = [[ClassB alloc] init];
    
    //该方法是父类的方法
    [b initVar];
    [b printVar];
 
    return 0;
}
