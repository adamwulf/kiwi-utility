//
//  MMTracker.h
//  KiwiUtility
//
//  Created by Adam Wulf on 10/10/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>


@interface MMStatTracker : NSObject

+ (MMStatTracker *)trackerWithName:(NSString *)name;

- (instancetype)init NS_UNAVAILABLE;

@property(nonatomic, readonly) CGFloat avg;
@property(nonatomic, readonly) CGFloat stdDev;
@property(nonatomic, readonly) CGFloat min;
@property(nonatomic, readonly) CGFloat max;

- (void)trackValue:(CGFloat)nextVal;

@end
