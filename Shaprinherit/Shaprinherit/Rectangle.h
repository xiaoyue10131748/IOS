//
//  Rectangle.h
//  Shaprinherit
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject
{
    int width;
    int height;
}

@property (nonatomic) int width, height;

- (int) area;

- (int) perimeter;

- (void) setWidth:(int) w andHeight: (int) h;
@end

NS_ASSUME_NONNULL_END
