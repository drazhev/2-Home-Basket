//
//  main.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BigFruit.h"
#import "PitFruit.h"
#import "Basket.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        PitFruit *pitFruit = [[PitFruit alloc] initWithName:@"The same name" weight:10 andPitSize:0.7];
        BigFruit *bigFruitDefault = [[BigFruit alloc] init];
        BigFruit *bigFruitVeryBig = [[BigFruit alloc] initWithName:@"Big Fruit" weight:9 andSize:VeryBig];
        BigFruit *bigFruitMiddle = [[BigFruit alloc] initWithName:@"Big Fruit With Middle Size" weight:20 andSize:Middle];
        Fruit *simpleFruit = [[Fruit alloc] initWithName: @"The same name" andWeight:50];
        Basket *basket = [[Basket alloc] init];
        [basket addFruit:pitFruit];
        [basket addFruit:bigFruitDefault];
        [basket addFruit:bigFruitVeryBig];
        [basket addFruit:bigFruitMiddle];
        [basket addFruit:simpleFruit];
        [basket showEatableWeight];
        [basket describeContent];
    }
    return 0;
}

