//
//  Grape.m
//  FruitsProject
//
//  Created by Diana on 9/25/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import "Grape.h"

@implementation Grape

-(id) initWithSeed: (NSNumber *) seedCount
{
    self = [super init];
    if(self)
    {
        [self setSeed: seedCount];
        NSLog(@"Grape was created");
    }
    return self;
}

-(NSString *) description{
    NSString * descString = [NSString stringWithFormat: @"%@", @"Grape"];
    return descString;
}

@end
