//
//  Fruit.h
//  2-Home-Basket
//
//  Created by Alexandar Drajev on 11/19/13.
//  Copyright (c) 2013 Alexander Drazhev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject {
    NSString* _fruitName;
    double _fruitWeight;
}

@property (nonatomic, readonly) NSString* fruitName;
@property (nonatomic, readonly) double fruitWeight;

// designated initializer
-(id)initWithName:(NSString *)name andWeight: (double) weight;

-(double) eatableWeight;


@end
