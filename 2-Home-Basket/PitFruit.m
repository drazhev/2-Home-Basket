//
//  PitFruit.m
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import "PitFruit.h"

@interface PitFruit ()

@property (nonatomic, readwrite) double pitSize;

@end

@implementation PitFruit

-(void)setPitSize:(double)pitSize {
    if (pitSize >= 0 && pitSize <= 1) {
        _pitSize = pitSize;
    }
}

-(id) initWithName:(NSString*) name weight: (double) weight andPitSize: (double) pitSize {
    if (self = [super initWithName:name andWeight:weight]) {
        self.pitSize = pitSize;
    }
    return  self;
}

// default initializer

-(id) init {
    return [self initWithName:@"PitFruit" weight:0.5 andPitSize:0.3];
}

// override the designated initializer from the super class so that it calls this designated initializer

-(id) initWithName:(NSString *)name andWeight:(double)weight {
    return [self initWithName:name weight:weight andPitSize:0.3];
}

-(double) eatableWeight {
    return (1-self.pitSize)*self.fruitWeight;
}

@end
