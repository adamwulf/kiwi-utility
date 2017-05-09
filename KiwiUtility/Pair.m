//
//  Pair.m
//  kiwi-utility
//
//  Created by Adam Wulf on 5/9/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import "Pair.h"

@implementation Pair

+(instancetype) pairWithVal1:(id)val1 andVal2:(id)val2{
    Pair* pair = [[Pair alloc] init];

    [pair setVal1:val1];
    [pair setVal2:val2];
    
    return pair;
}

-(NSString*) description{
    return [NSString stringWithFormat:@"[Pair: %@ %@]", [self val1], [self val2]];
}

@end
