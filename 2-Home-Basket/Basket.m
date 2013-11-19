//
//  Basket.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Basket.h"

@interface Basket ()

@end

@implementation Basket

-(id) initWithFruits:(NSMutableDictionary *)fruits {
    if (self = [super init]) {
        self.fruits = fruits;
    }
    return self;
}

// default initializer

-(id) init {
    return [self initWithFruits: [[NSMutableDictionary alloc] init]];
}

-(void) addFruit:(Fruit *)fruit {
    NSMutableArray* currentFruit;
    if ((currentFruit = [self.fruits objectForKey: fruit.fruitName])) {
        [currentFruit addObject: fruit];
    }
    else {
        NSMutableArray* newFruit = [NSMutableArray arrayWithObjects:fruit, nil];
        [self.fruits setObject: newFruit forKey:fruit.fruitName];
    }
}

-(void) showEatableWeight {
    double totalWeight = 0;
    for (NSString* key in self.fruits) {
        for (Fruit *fruit in [self.fruits objectForKey:key]) {
            totalWeight += [fruit eatableWeight];
        }
    }
    NSLog(@"The basket has %.2f kilos eatable weight", totalWeight);
}


@end
