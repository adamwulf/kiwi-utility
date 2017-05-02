//
//  MMTracker.m
//  LooseLeaf
//
//  Created by Adam Wulf on 10/10/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import "MMStatTracker.h"


@implementation MMStatTracker {
    NSString *statName;

    // this array will track all of the values
    // of our data, so we can calculate a
    // moving standard deviation
    NSMutableDictionary *storedValues;
}

#pragma mark - Trackers

static NSMutableDictionary *trackers;

+ (MMStatTracker *)trackerWithName:(NSString *)name
{
    MMStatTracker *tracker = [trackers objectForKey:name];
    if (tracker)
        return tracker;
    tracker = [[MMStatTracker alloc] initWithName:name];
    [trackers setObject:tracker forKey:name];
    return tracker;
}

- (instancetype)initWithName:(NSString *)_statName
{
    if (self = [super init]) {
        statName = _statName;
        storedValues = [NSMutableDictionary dictionary];
    }
    return self;
}

- (void)trackValue:(CGFloat)thisVal
{
    // get current count value

    NSInteger currCount = [[storedValues objectForKey:@"count"] integerValue];
    CGFloat currVal = [[storedValues objectForKey:@"avg"] doubleValue];
    CGFloat min = [[storedValues objectForKey:@"min"] doubleValue];
    CGFloat max = [[storedValues objectForKey:@"max"] doubleValue];

    // increment to track this one
    currCount++;

    // calculate average
    CGFloat movingAvg = (thisVal + (currCount - 1) * currVal) / (CGFloat)currCount;

    if (thisVal < min || ![storedValues objectForKey:@"min"]) {
        min = thisVal;
    }
    if (thisVal > max || ![storedValues objectForKey:@"max"]) {
        max = thisVal;
    }

    //
    // next, calculate the moving standard deviation
    CGFloat sumSquares = [[storedValues objectForKey:@"sumSquares"] doubleValue];

    CGFloat deviation = thisVal - movingAvg;
    sumSquares += deviation * deviation;

    // update our data
    [storedValues setObject:@(currCount) forKey:@"count"];
    [storedValues setObject:@(movingAvg) forKey:@"avg"];
    [storedValues setObject:@(sumSquares) forKey:@"sumSquares"];
    [storedValues setObject:@(min) forKey:@"min"];
    [storedValues setObject:@(max) forKey:@"max"];

    CGFloat stDev = sqrt(sumSquares / currCount);

    [storedValues setObject:@(stDev) forKey:@"stDev"];
}


- (CGFloat)min
{
    return [storedValues[@"min"] doubleValue];
}

- (CGFloat)max
{
    return [storedValues[@"max"] doubleValue];
}

- (CGFloat)stdDev
{
    return [storedValues[@"stDev"] doubleValue];
}

- (CGFloat)avg
{
    return [storedValues[@"avg"] doubleValue];
}

@end
