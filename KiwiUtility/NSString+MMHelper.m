//
//  NSString+MMHelper.m
//  kiwi-utility
//
//  Created by Adam Wulf on 4/19/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import "NSString+MMHelper.h"

@implementation NSString (MMHelper)

-(NSString*) lastLetter{
    if([self length]){
        return [self substringFromIndex:[self length] - 1];
    }
    
    return @"";
}

-(NSString*) firstLetter{
    if([self length]){
        return [self substringToIndex:1];
    }
    
    return @"";
}

@end
