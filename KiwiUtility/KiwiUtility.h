//
//  KiwiUtility.h
//  KiwiUtility
//
//  Created by Adam Wulf on 4/17/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for KiwiUtility.
FOUNDATION_EXPORT double KiwiUtilityVersionNumber;

//! Project version string for KiwiUtility.
FOUNDATION_EXPORT const unsigned char KiwiUtilityVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <KiwiUtility/PublicHeader.h>

#import <KiwiUtility/NSArray+MapReduce.h>
#import <KiwiUtility/NSArray+Helper.h>
#import <KiwiUtility/NSString+MMHelper.h>
#import <KiwiUtility/NSFileManager+DirectoryOptimizations.h>
#import <KiwiUtility/MMStatTracker.h>
#import <KiwiUtility/Pair.h>

static inline NSUInteger HashDouble(double value) {
    double absolute = ABS(value);
    double integral = round(absolute);
    double fragment = absolute - integral;
    NSUInteger integralHash = 2654435761U * fmod(integral, NSUIntegerMax);
    NSUInteger fragmentHash = fragment * NSUIntegerMax;
    return integralHash + fragmentHash;
}
