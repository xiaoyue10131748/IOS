//
//  Rectangle.h
//  Shaprinherit
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;
NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject
{
    int width;
    int height;
    XYPoint *origin;
}

@property (nonatomic) int width, height;

- (int) area;

- (int) perimeter;

- (void) setWidth:(int) w andHeight: (int) h;

- (XYPoint *) origin;

- (void) setOrigin: (XYPoint *) pt;

@end

NS_ASSUME_NONNULL_END
