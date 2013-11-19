//
//  PitFruit.h
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Fruit.h"

@interface PitFruit : Fruit

@property (nonatomic, readonly) double pitSize;

// designated initializer

-(id) initWithName:(NSString*) name weight: (double) weight andPitSize: (double) pitSize;

@end
