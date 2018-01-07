//
//  NSArray+Helper.h
//  KiwiUtility
//
//  Created by Adam Wulf on 4/26/13.
//  Copyright (c) 2013 Milestone Made LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray<Object> (Helper)

-(Object) firstObject;

-(Object) secondObject;

-(NSArray*) objectsFromIndex:(NSInteger)indx;

// up to but not including
-(NSArray*) objectsToIndex:(NSInteger)indx;

-(NSArray*) cons:(NSObject*)obj;

-(NSArray*) cdr;

-(id) lastObjectOfClass:(Class) aClass;

- (NSArray *)arrayByRemovingObject:(id)anObject;

- (NSArray *)arrayByRemovingObjectAtIndex:(NSUInteger)index;

- (NSArray *)arrayByRemovingLastObject;

- (NSArray *)arrayByRemovingFirstObject;

-(Object) objectAfter:(Object)obj;

-(Object) objectBefore:(Object)obj;

-(NSArray*) arrayByRemovingDuplicates;

-(NSArray*) reversedArray;

@end

@interface NSMutableArray (Helper)

-(void) reverseArray;

-(void) removeFirstObject;

-(void) moveObjectAtIndex:(NSUInteger)index1 toIndex:(NSUInteger)index2;

@end
