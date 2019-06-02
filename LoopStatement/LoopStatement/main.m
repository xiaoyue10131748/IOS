//
//  main.m
//  LoopStatement
//
//  Created by xiao yue on 5/28/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");

        //if 语句
        int score = 10;
        if (score < 20){
            NSLog(@"不及格");
        }else if (score >= 60){
            NSLog(@"及格");
        }

        //判断一个年份是不是闰年
        int year;
        printf("输入一个年份： ");
        scanf("%d", &year);
        if ((year%4 == 0 && year % 100 != 0) || (year % 400 ==0)){
            NSLog(@"这个年是闰年");
        }else {
            NSLog(@"这个年不是是闰年");
        }


        //课堂练习，打印1-200内不能被s3 整除的数

        for(int i = 1; i <=200; i++){
            if (i % 3 != 0){
                NSLog(@"%d ", i);
            }
        }
        
        //用 for 循环打印乘法口诀表
        for (int i = 1; i <= 9; i++){
            for (int j = 1 ; j <= i; j++){
                printf("%d * %d = %d", i,j, i*j);
            }
             printf("\n");
        }


      
        switch (score) {
            case 40:
                NSLog(@"不及格");
                break;
            case 60:
                NSLog(@"及格");
                break;
            case 90:
                NSLog(@"优秀");
                break;
            default:
                NSLog(@"五分数");
                break;
        }
    }
}
