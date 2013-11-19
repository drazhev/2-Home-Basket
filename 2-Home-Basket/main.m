//
//  main.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BigFruit.h"
#import "Fruit.h"
#import "PitFruit.h"
#import "Basket.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        PitFruit *pitFruit = [[PitFruit alloc] initWithName:@"The same name" weight:10 andPitSize:0.7];
        BigFruit *bigFruit = [[BigFruit alloc] init];
        BigFruit *bigFruit2 = [[BigFruit alloc] initWithName:@"Big Fruit 2" weight:9 andSize:VeryBig];
        Fruit *fruit = [[Fruit alloc] initWithName: @"The same name" andWeight:50];
        Basket *basket = [[Basket alloc] init];
        [basket addFruit:fruit];
        [basket addFruit:pitFruit];
        [basket addFruit:bigFruit];
        [basket addFruit:bigFruit2];
        [basket showEatableWeight];
        [basket describeContent];
    }
    return 0;
}

