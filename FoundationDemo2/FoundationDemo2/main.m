//
//  main.m
//  FoundationDemo2
//
//  Created by xiao yue on 6/3/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    //创建一个字符串常量
    NSString *string1 = @"这是一个字符串常量";
    NSLog(@"string1: %@", string1);
    
    //创建一个空的字符串
    NSString *string2 = [[NSString alloc] init];
    NSLog(@"string2: %@", string2);
    
    NSString *string3 = [NSString string];
    NSLog(@"string3: %@", string3);
    
    //快速创建一个字符串对象（其实在常量区）
    NSString *string4 = [[NSString alloc] initWithString: @"abc"];
    NSLog(@"string4: %@", string4);
    
    NSString *string5 = [NSString stringWithString: @"abc"];
    NSLog(@"string5: %@", string5);
    
    //创建一个格式化的字符串（创建在堆内存中）
    NSString *string6 =[[NSString alloc] initWithFormat:@"整数%d", 10];
    NSString *string7 =[NSString stringWithFormat:@"浮点数%f", 10.8];
    NSLog(@"string6: %@", string6);
    NSLog(@"string7: %@", string7);
    
    //因为用stringWithString创建在常量区，所以string8 == string9 指向同一个地址内容为123
    //stringWithFormat 在堆内存
    NSString *string8 =[NSString stringWithFormat:@"整数%d", 10];
    NSString *string9 =[NSString stringWithFormat:@"整数%d", 10];
    
    //比较字符串内容是否相同
    if ([string4 isEqualToString:string5])
    {
        NSLog(@"same content");
    }else {
        NSLog(@"diffient content");
    }
    
    //测试是否是同一个对象，同一个指针地址
    if (string8 ==string9)
    {
        NSLog(@"same point ");
    }else {
        NSLog(@"diffient point");
    }
    
    //比较大小
    NSString *string10 = [[NSString alloc] initWithFormat:@"z"];
    NSString *string11 = [[NSString alloc] initWithFormat:@"bugi9b"];
    NSComparisonResult result =  [string10 caseInsensitiveCompare:string11];
    NSLog(@"比较结果： %ld", result);
    
    
    //字符串长度
    NSLog(@"字符长度: %ld",[string11 length]);
    
    //字符串的转换
    NSString *string12 = @"HEllo,woRLD";
    NSLog(@"upper : %@",[string12 uppercaseString]);
    NSLog(@"lower : %@",[string12 lowercaseString]);
    NSLog(@"capital : %@",[string12 capitalizedString]); //每个首字母大写
    
    //转成基本数据类型
    NSString *string13 = @"3.14";
    float pi = [string13 floatValue];
     NSLog(@"pi : %.2f", pi);
    
    //字符串转换成数组
    NSString *string14 = @"abc dfg fef";
    NSArray *array = [string14 componentsSeparatedByString:@" "];
    NSLog(@"array : %@", array);

    
    
    //字符串的截取与拼接
    NSString *string15 = @"abcdefg";
    NSLog(@"TO : %@", [string15 substringToIndex:2]);
    NSLog(@"From : %@", [string15 substringFromIndex:2]);
    
    NSRange range;
    range.location = 4;
    range.length = 2;
    NSString *subString = [string15 substringWithRange:range];
    NSLog(@"range : %@", subString);

    
    //字符串的拼接
    NSString *string16 = @"abc";
    NSString *string17 = @"xyz";
    NSString *appString1 = [[NSString alloc] initWithFormat:@"%@%@",string16,string17];
    NSLog(@"appString1 : %@", appString1);
    
    NSString *appString2 = [string16 stringByAppendingString:string17];
    NSLog(@"appString2 : %@", appString2);

    //查找字符串
    NSString *link = @"abshdtarget=_blankefvf";
    NSRange range1 = [link rangeOfString: @"target=_blank"];
    NSLog(@"fromRange: %@", NSStringFromRange(range1));
    if (range1.location != NSNotFound){
         NSLog(@"founded");
    }
    
    
    //可变字符串(插入 替换 删除)
    NSMutableString *mutableString1 = [[NSMutableString alloc] initWithFormat:@"abc"];
    [mutableString1 insertString:@"...xyz" atIndex:3];
    NSLog(@"mutableString1: %@", mutableString1);
    
    [mutableString1 replaceCharactersInRange:NSMakeRange(0, 3) withString:@"efg"];
    NSLog(@"mutableString1: %@", mutableString1);
    
    [mutableString1 deleteCharactersInRange:NSMakeRange(0, 3)];
    NSLog(@"mutableString1: %@", mutableString1);
    
    
    
}
