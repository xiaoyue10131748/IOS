//
//  main.m
//  PersonGetSet
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *p = [[Person alloc] init];
        p.myNumber = 20;
        NSLog(@"myNumber is : %d", [p changeStaticValue]);
        
    }
    return 0;
}
