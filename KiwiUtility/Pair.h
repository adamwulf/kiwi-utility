//
//  Pair.h
//  KiwiUtility
//
//  Created by Adam Wulf on 5/9/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pair <ObjectType1, ObjectType2> : NSObject

+(instancetype) pairWithVal1:(ObjectType1)val1 andVal2:(ObjectType2)val2;

@property (nonatomic, strong) ObjectType1 val1;
@property (nonatomic, strong) ObjectType2 val2;

@end
