//
//  main.m
//  FoundationDemo4
//
//  Created by xiao yue on 6/4/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //创建一个字典
        NSDictionary *dic1 = [NSDictionary dictionaryWithObject:@"value1" forKey:@"key1"];
        NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"v1", @"k1", @"v2", @"k2",  @"v3", @"k3", @"v4", @"k4", @"v5", @"k5", nil];
        NSDictionary *dic3 = [NSDictionary dictionaryWithDictionary:dic1];
        NSLog(@"dic1: %@", dic1);
        NSLog(@"dic2: %@", dic2);
        NSLog(@"dic3: %@", dic3);
        
        
        //获取字典的数量
        int count = [dic2 count];
        
        //获取字典的value
        NSString *string = [dic2 objectForKey:@"k3"];
        NSLog(@"value: %@", string);
        
        //获取字典的所有key 和 value
        NSArray *keyArray = [dic2 allKeys];
        NSArray *keyVaule = [dic2 allValues];
        NSLog(@"keyArray: %@", keyArray);
        NSLog(@"keyVaule: %@", keyVaule);
        
        
        //创建一个可变的字典
        NSMutableDictionary *mutableDic = [[NSMutableDictionary alloc] initWithObjectsAndKeys: @"v1", @"k1", @"v2", @"k2",  @"v3", @"k3", @"v4", @"k4", @"v5", @"k5", nil];
        NSDictionary *dic4 = [NSDictionary dictionaryWithObject:@"v6" forKey: @"k6"];
        
        //向可变字典添加一个字典
        [mutableDic addEntriesFromDictionary:dic4];
        NSLog(@"mutableDic: %@", mutableDic);
        
        //向可变字典添加一个entry
        [mutableDic setValue:@"object" forKey:@"key"];
        NSLog(@"mutableDic: %@", mutableDic);
        
        //创建一个空字典
        NSMutableDictionary *mutableDic2 = [NSMutableDictionary dictionary];
        [mutableDic2 setDictionary:mutableDic]; //会覆盖
        NSLog(@"mutableDic2: %@", mutableDic2);
        
        //根据指定的key 删除entry
        [mutableDic2 removeObjectForKey:@"k4"];
        NSLog(@"mutableDic2: %@", mutableDic2);
        
        //删除一组keys
        NSArray *keys = [NSArray arrayWithObjects:@"k1",@"k2",@"k3", nil];
        [mutableDic2 removeObjectsForKeys:keys];
        NSLog(@"mutableDic2: %@", mutableDic2);
        
        //删除所有entry
        //[mutableDic2 removeAllObjects];
        
        //遍历字典
        NSArray *keys2 = [dic2 allKeys];
        int len = [keys2 count];
        for (int i = 0; i < len; i++)
        {
            NSString *key = [keys2 objectAtIndex:i];
            NSString *value = [dic2 objectForKey:key];
        }
        
        //遍历字典--快速遍历
        for (id key in dic2) {
            NSString *value = [dic2 objectForKey:key];
            NSLog(@"%@ : %@", key, value);
        }
        
        //遍历字典--使用枚举类型
        
        
        NSEnumerator *enumrator = [dic2 keyEnumerator];
        id key  ;
        while(key = [enumrator nextObject])
        {
            NSString *value = [dic2 objectForKey:key];
            NSLog(@"%@ ::: %@", key, value);

        }
    }
    return 0;
}
