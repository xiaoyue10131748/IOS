//
//  Person.h
//  Person
//
//  Created by xiao yue on 5/29/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    int identify;
    int age;
}
- (id) initWithAge:(int)_age idenfity:(int) _identify;
- (int) getIdentify;
- (int) getAge;
- (void) setAge:(int)_age;

@end

NS_ASSUME_NONNULL_END
