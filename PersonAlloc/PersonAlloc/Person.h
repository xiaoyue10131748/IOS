//
//  Person.h
//  PersonAlloc
//
//  Created by xiao yue on 6/2/19.
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
- (void) changeAge:(int) _age;
- (void) changeInfo:(Person *) _person;
- (void) changed:(Person *) _person;
@end

NS_ASSUME_NONNULL_END
