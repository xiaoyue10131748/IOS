//
//  main.m
//  learningOC
//
//  Created by xiao yue on 5/27/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //基本数据类型转换
        int i1 = 123;
        int i2 = 456;
        double d1 = (i1+i2)*1.5;
        NSLog(@"d1:%.2f", d1);
        
        //强制类型转换
        float f1 = (float)((i1 + i2) * 1.5);
        NSLog(@"f1:%.2f", f1);
        Byte b1 = 140; //直接把int 类型赋值给Byte 类型是可以的，只要不超过byte类型的范围 Byte 256
        Byte b2 = 77;
        Byte b3 = (Byte)(b1 + b2);
        NSLog(@"b31:%d", b3);
        
        double d2 = 3.14e50;
        float f2 = (float)d2;
        NSLog(@"F2:%f", f2);
        
        float f3 = 1.23f;
        long l1 = 123;
        long l2 = 23343453423313434L;
        float f4 = l1 + l2 + f3;
        NSLog(@"f4:%f", f4); //小容量向大容量转换没有问题
        
        long l3 = (long)f4;
        NSLog(@"l3: %li", l3);
    }
    
    return 0;
}
