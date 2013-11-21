//
//  PitFruit.h
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Fruit.h"

@interface PitFruit : Fruit

// comment out these if you want to modify the derived properites
// it is not neccessary for this assignment, though

//@property (nonatomic, readwrite) NSString* fruitName;
//@property (nonatomic, readwrite) double fruitWeight;

@property (nonatomic, readonly) double pitSize;

// designated initializer

-(id) initWithName:(NSString*) name weight: (double) weight andPitSize: (double) pitSize;

@end
