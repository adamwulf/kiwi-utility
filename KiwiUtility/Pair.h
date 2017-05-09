//
//  Pair.h
//  kiwi-utility
//
//  Created by Adam Wulf on 5/9/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pair <ObjectType> : NSObject

+(instancetype) pairWithVal1:(ObjectType)val1 andVal2:(ObjectType)val2;

@property (nonatomic, strong) ObjectType val1;
@property (nonatomic, strong) ObjectType val2;

@end
