//
//  Student.h
//  PersonSelf
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    int age;
    int className;
}

-(int) getClassName;

@end

NS_ASSUME_NONNULL_END
