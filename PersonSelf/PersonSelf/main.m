//
//  main.m
//  PersonSelf
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonSelf.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    PersonSelf *ps = [[PersonSelf alloc] init];
    [ps setName:@"xiaoyue"];
    
    return 0;
}
