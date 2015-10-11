//
//  Pomegranate.m
//  FruitsProject
//
//  Created by Diana on 9/25/15.
//  Copyright (c) 2015 Diana. All rights reserved.
//

#import "Pomegranate.h"

@implementation Pomegranate
@synthesize seed = _seed;

-(id) initWithSeed: (NSNumber *) seedCount
{
    self = [super init];
    if(self)
    {
        [self setSeed: seedCount];
        NSLog(@"Pomegranate was created");
    }
    return self;
}

-(NSString *) description{
    NSString * descString = [NSString stringWithFormat: @"%@", @"Pomegranate"];
    return descString;
}

@end
