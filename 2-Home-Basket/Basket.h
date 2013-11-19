//
//  Basket.h
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@protocol EatableWeight <NSObject>

-(void) showEatableWeight;

@end

@interface Basket : NSObject <EatableWeight>

@property (nonatomic) NSMutableDictionary* fruits;

// designated initializer
-(id) initWithFruits: (NSMutableDictionary*) fruits;

-(void) addFruit: (Fruit*) fruit;

@end
