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
// checks if we've tried to create this path before,
// if so then returns immediatley.
// otherwise checks existence and creates if needed
+ (void)ensureDirectoryExistsAtPath:(NSString*)path {
    if (!path)
        return;
    
    NSFileManager* fm = [[NSFileManager alloc] init];

    if (![fm fileExistsAtPath:path]) {
        [fm createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
    }
}


@end
