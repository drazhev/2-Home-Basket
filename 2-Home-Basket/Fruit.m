//
//  Fruit.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "Fruit.h"

@interface Fruit ()

@property (nonatomic, readwrite) NSString* fruitName;
@property (nonatomic, readwrite) double fruitWeight;

@end

@implementation Fruit


-(id) initWithName:(NSString *)name andWeight:(double)weight {
    if (self = [super init]) {
        self.fruitName = name;
        self.fruitWeight = weight;
    }
    return self;
}


-(id) init {
    return [self initWithName:@"Fruit" andWeight:0.2];
}

-(double) eatableWeight {
    return self.fruitWeight;
}
@end
