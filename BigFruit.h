//
//  BigFruit.h
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Fruit.h"

typedef enum fruitSize{
    Middle = 5,
    Big = 10,
    VeryBig = 30
} fruitSize;

@interface BigFruit : Fruit

// comment out these if you want to set the derived properites
// it is not neccessary for the assignment, though

//@property (nonatomic, readwrite) NSString* fruitName;
//@property (nonatomic, readwrite) double fruitWeight;

@property (nonatomic, readonly) fruitSize bigFruitSize;

// designated initializer
-(id) initWithName:(NSString *)name weight: (double) weight andSize: (fruitSize) size;

@end
