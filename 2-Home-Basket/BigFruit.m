//
//  BigFruit.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "BigFruit.h"

@interface BigFruit ()

@property (nonatomic, readwrite) fruitSize bigFruitSize;

@end

@implementation BigFruit

// comment out these if you want to set the derived properites
// it is not neccessary for the assignment, though

//-(void)setFruitName:(NSString *)fruitName {
//    _fruitName = fruitName;
//}

//-(void)setFruitWeight:(double)fruitWeight {
//    _fruitWeight = fruitWeight;
//}

-(id) initWithName:(NSString *)name weight: (double) weight andSize: (fruitSize) size {
    if (self = [super initWithName:name andWeight:weight]) {
        self.bigFruitSize = size;
    }
    return self;
}

// override the designated initializer from the super class so that it calls this designated initializer

-(id) initWithName:(NSString *)name andWeight:(double)weight {
    return [self initWithName:name weight:weight andSize:Middle];
}

// default initializer

-(id) init {
    return [self initWithName:@"BigFruit" weight:0.2 andSize:Middle];
}

-(double) eatableWeight {
    return self.fruitWeight * (int)self.bigFruitSize;
}


@end
