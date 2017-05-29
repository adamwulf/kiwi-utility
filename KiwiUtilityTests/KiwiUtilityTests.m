//
//  KiwiUtilityTests.m
//  KiwiUtilityTests
//
//  Created by Adam Wulf on 5/28/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KiwiUtility/KiwiUtility.h>

@interface KiwiUtilityTests : XCTestCase

@end

@implementation KiwiUtilityTests

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    MMStatTracker* statTracker = [MMStatTracker trackerWithName:@"sample"];
    
    [statTracker trackValue:4];
    [statTracker trackValue:5];
    [statTracker trackValue:6];
    
    XCTAssertEqual([statTracker avg], 5, @"average is correct");
}

@end
