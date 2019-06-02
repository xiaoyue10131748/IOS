//
//  main.m
//  Caculator
//
//  Created by xiao yue on 5/28/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Boolean flag = true;
        while (flag){
            char a;
            float number1, number2, result = 0;
            printf("a表示加法\n");
            printf("b表示减法\n");
            printf("c表示乘法\n");
            printf("d表示除法\n");
            printf("请输入您的选择：\n ");
            scanf("%c", &a);
         
            switch (a) {
                case 'a':
                    printf("请输入number1：\n");
                    scanf("%f", &number1);
                    printf("请输入number2： \n ");
                    scanf("%f", &number2);
                    result = number1 + number2;
                    printf("%.1f +%.1f = %.1f  \n",number1, number2, result);
                    break;
                case 'b':
                    printf("请输入number1：\n");
                    scanf("%f", &number1);
                    printf("请输入number2： \n ");
                    scanf("%f", &number2);
                    result = number1 - number2;
                    printf("%.1f  - %.1f = %.1f  \n",number1, number2, result);
                    break;
                case 'c':
                    printf("请输入number1：\n");
                    scanf("%f", &number1);
                    printf("请输入number2： \n ");
                    scanf("%f", &number2);
                    result = number1 * number2;
                    printf("%.1f * %.1f = %.1f  \n",number1, number2, result);
                    break;
                case 'd':
                    printf("请输入number1：\n");
                    scanf("%f", &number1);
                    printf("请输入number2： \n ");
                    scanf("%f", &number2);
                    result = number1 / number2;
                    printf("%.1f / %.1f = %.1f  \n",number1, number2, result);
                    break;
                case 'q':
                    flag = false;
                    printf("已经退出");
                    
                default:
                    result = 0;
                    break;
            }
        }
        
    }
    return 0;
}
