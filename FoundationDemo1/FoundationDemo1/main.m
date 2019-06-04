//
//  main.m
//  FoundationDemo1
//
//  Created by xiao yue on 6/3/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个NSNuber对象
        NSNumber *mouthNumber = [NSNumber numberWithInt:10];
        NSNumber *lengthNumber = [[NSNumber alloc] initWithFloat:10.8];
        NSLog(@"mouthNumber: %@", mouthNumber);
        NSLog(@"lengthNumber: %@", lengthNumber);
        
        //还原成基本类型
        int month = [mouthNumber intValue];
        float length = [lengthNumber floatValue];
        NSLog(@"mouth: %d", month);
        NSLog(@"length: %.2f", length);
        
    }
    return 0;
}
