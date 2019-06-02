//
//  Person.h
//  learningOC
//
//  Created by xiao yue on 5/28/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    int age;
    int sex;
}
- (void) getAge;
@end

NS_ASSUME_NONNULL_END
