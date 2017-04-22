//
//  NSFileManager+DirectoryOptimizations.m
//  LooseLeaf
//
//  Created by Adam Wulf on 3/27/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import "NSFileManager+DirectoryOptimizations.h"


@implementation NSFileManager (DirectoryOptimizations)

static NSArray* userDocumentsPaths;
static NSArray* userCachesPaths;

+ (NSString*)cachesPath {
    if (!userCachesPaths) {
        userCachesPaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    }
    return [userCachesPaths objectAtIndex:0];
}

+ (NSString*)documentsPath {
    if (!userDocumentsPaths) {
        userDocumentsPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    }
    return [userDocumentsPaths objectAtIndex:0];
}

@end
