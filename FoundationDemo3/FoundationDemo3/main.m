//
//  main.m
//  FoundationDemo3
//
//  Created by xiao yue on 6/3/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //通过类方法的数组的创建
        NSArray *array1 = [NSArray arrayWithObject:@"one"];
        NSArray *array2 = [NSArray arrayWithObjects:@"one", @"two", nil];
        NSArray *array3 = [NSArray arrayWithArray:array2];
        NSLog(@"array1: %@", array1);
        NSLog(@"array2: %@", array2);
        NSLog(@"array3: %@", array3);
        
        //通过实例方法创建数组
        NSArray *array4 = [[NSArray alloc] initWithArray:array1];
        NSLog(@"array4: %@", array4);
        
        //获取数组中元素的个数以及访问
        int count = [array2 count];
        NSLog(@"array2 all element: %d", count);
        NSString *string1 = [array2 objectAtIndex:0];
        NSLog(@"element of array: %@", string1);
        
        //追加数组的内容
        NSArray *array5 = [array2 arrayByAddingObject:@"end"];
        NSLog(@"array4: %@", array5);
        
        
        //数组 -> 字符串
        NSString *string2 = [array5 componentsJoinedByString:@","];
        NSLog(@"string2: %@", string2);
        
        //数组是否包含某对象
        BOOL isContain = [array5 containsObject:@"end"];
        NSLog(@"isContain: %d", isContain);
        
        //根据指定对象返回索引下标，返回数组中最后一个
        NSInteger index = [array5 indexOfObject:@"end"];
        NSLog(@"index: %ld", index);
        NSString *lastOject = [array5 lastObject];
        NSLog(@"lastOject: %@", lastOject);
        
        //可变数组的
        //创建一个空的数组
        NSMutableArray *mutableArray1 = [NSMutableArray array];
        NSMutableArray *mutableArray2 = [NSMutableArray arrayWithCapacity:5];
        NSMutableArray *mutableArray3 =[NSMutableArray arrayWithObjects:@"one", @"two", @"five",nil];
        
        //增加一个object
        [mutableArray3 addObject:@"four"];
        
        //插入一个object
        [mutableArray3 insertObject:@"three" atIndex:2];

        
        //删除一个object
        [mutableArray3 removeLastObject];
        NSLog(@"mutableArray3: %@", mutableArray3);
        [mutableArray3 removeObject:@"five"];
        NSLog(@"mutableArray3: %@", mutableArray3);
        [mutableArray3 removeObjectAtIndex:0];
        NSLog(@"mutableArray3: %@", mutableArray3);
        [mutableArray3 addObject:@"four"];
        [mutableArray3 addObject:@"five"];
        [mutableArray3 addObject:@"six"];
        NSArray *deleteArray = [NSArray arrayWithObjects: @"four", @"five",nil];
        [mutableArray3 removeObjectsInArray:deleteArray];
        NSLog(@"mutableArray3: %@", mutableArray3);
        
        //替换指定下标的object
        [mutableArray3 replaceObjectAtIndex:0 withObject:@"3"];
        NSLog(@"mutableArray3: %@", mutableArray3);
        
        
        //遍历数组
        NSArray *array = [NSArray arrayWithObjects:@"one", @"two",@"three", @"four",nil];
        for (int index = 0; index < [array count]; index++)
        {
            NSString *s = [array objectAtIndex:index];
            NSLog(@"%@", s);
        }
        
        for (NSString *s in array)
        {
            NSLog(@"anohter way: %@", s);
        }
        
    }
    return 0;
}
