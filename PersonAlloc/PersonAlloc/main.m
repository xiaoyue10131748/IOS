//
//  main.m
//  PersonAlloc
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
    }
    Person *p1 = [[Person alloc] initWithAge:30 idenfity: 23445];
    int age = 20;
    Person *p2 = [[Person alloc] initWithAge:28 idenfity: 122443];
    
    [p1 changeAge:age];
    
    [p1 changeInfo:p1];
    
    [p1 changed:p2];
    
    
    
    return 0;
}
