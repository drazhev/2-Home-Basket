//
//  NSMutableDictionary+FruitCategory.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "NSMutableDictionary+FruitCategory.h"
#import "PitFruit.h"
#import "BigFruit.h"

@implementation NSMutableDictionary (FruitCategory)

-(NSString*) showContentOfBasketDictionary {
    int fruitsCount = 0;
    int bigFruitsCount = 0;
    int pitFruitsCount = 0;
    for (NSString* key in self) {
        for (Fruit *fruit in [self objectForKey:key]) {
            if ([fruit isMemberOfClass: [Fruit class]]) {
                fruitsCount++;
            }
            if ([fruit isMemberOfClass: [PitFruit class]]) {
                pitFruitsCount++;
            }
            if ([fruit isMemberOfClass: [BigFruit class]]) {
                bigFruitsCount++;
            }
        }
    }
    
    return [NSString stringWithFormat:@"%d Fruits, %d Big fruits and %d PitFruits", fruitsCount, bigFruitsCount, pitFruitsCount];
    
}

@end
