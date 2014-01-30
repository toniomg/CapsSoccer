//
//  BallSprite.m
//  SoccerCaps
//
//  Created by Antonio Martinez on 29/01/2014.
//  Copyright (c) 2014 AMG. All rights reserved.
//

#import "BallSprite.h"

#define SIZE 10

@implementation BallSprite

-(id)init{
    
    if (self == [super init])
    {
        CGPathRef circlePath = CGPathCreateWithEllipseInRect(CGRectMake(-SIZE/2, -SIZE/2, SIZE, SIZE), nil);
        self.path = circlePath;
        self.fillColor = [SKColor whiteColor];
        self.strokeColor = [SKColor whiteColor];
        
        self.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:SIZE/2];
        ;
        self.physicsBody.dynamic = YES;
        self.physicsBody.friction = 0.8f;
        self.physicsBody.restitution = 0.5;
        self.physicsBody.usesPreciseCollisionDetection = YES;
        self.physicsBody.mass = 100;
        self.physicsBody.allowsRotation = YES;
        self.physicsBody.velocity = self.physicsBody.velocity;
        
        
        return self;
    }
    
    return nil;
}


@end
