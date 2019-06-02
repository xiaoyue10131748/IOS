//
//  PersonSelf.h
//  PersonSelf
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Student;
NS_ASSUME_NONNULL_BEGIN

@interface PersonSelf : NSObject
{
    int age;
    NSString *name;
    Student *s;
}

- (NSString *) getName;
- (void) setName:(NSString *) _name;
- (int)getAge;
- (void) setAge:(int) _age;
@end

NS_ASSUME_NONNULL_END
