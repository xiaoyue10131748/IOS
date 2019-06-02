//
//  XYPoint.h
//  ShapeXYPoint
//
//  Created by xiao yue on 6/2/19.
//  Copyright © 2019 xiao yue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject
{
    int x;
    int y;
    
}
@property (nonatomic) int x, y;
- (void )setX : (int) xVal andY: (int) yVal;

@end

NS_ASSUME_NONNULL_END
