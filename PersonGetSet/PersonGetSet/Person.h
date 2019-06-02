//
//  Person.h
//  PersonGetSet
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    int myNumber;
}
@property (nonatomic) int myNumber;
- (int) changeStaticValue;
@end



NS_ASSUME_NONNULL_END
