//
//  NSFileManager+DirectoryOptimizations.h
//  KiwiUtility
//
//  Created by Adam Wulf on 3/27/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSFileManager (DirectoryOptimizations)

+ (NSString*)cachesPath;

+ (NSString*)documentsPath;

+ (void)ensureDirectoryExistsAtPath:(NSString*)path;

@end
