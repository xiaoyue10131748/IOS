//
//  Car.h
//  Car
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
{
    @protected
    float speed;
    
    @public
    NSString *name;
    
    @private
    int carID;
}

@property (nonatomic) int carID;
@property (nonatomic) float speed;
@property (nonatomic,copy) NSString *name;


- (id) initWithName: (NSString *) _name carSpeed :(float) _speed carID: (int) _cID;
- (void) run;
- ( NSString *) getName;
- (void) setName: ( NSString *) _name ;


@end

NS_ASSUME_NONNULL_END
