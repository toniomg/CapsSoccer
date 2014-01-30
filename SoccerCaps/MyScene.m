//
//  MyScene.m
//  SoccerCaps
//
//  Created by Antonio Martinez on 29/01/2014.
//  Copyright (c) 2014 AMG. All rights reserved.
//

#import "MyScene.h"
#import "CapSprite.h"
#import "BallSprite.h"

@interface MyScene ()

@property (nonatomic, strong) CapSprite *capA1;
@property (nonatomic, strong) CapSprite *capA2;
@property (nonatomic, strong) BallSprite *ball;

@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        self.physicsBody.friction = 1.0f;
        
        self.backgroundColor = [SKColor colorWithRed:0.1 green:0.2 blue:0.1 alpha:1.0];
        self.physicsWorld.gravity = CGVectorMake(0, 0);
        
        CapSprite *capA1 = [[CapSprite alloc] init];
        capA1.position = CGPointMake(50, 100);
        [self addChild:capA1];
        
        CapSprite *capA2 = [[CapSprite alloc] init];
        capA2.position = CGPointMake(250, 100);
        [self addChild:capA2];
        
        
        BallSprite *ball = [[BallSprite alloc] init];
        ball.position = CGPointMake(150, 100);
        [self addChild:ball];

    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    
    CGPoint location = [touch locationInNode:self];
    SKSpriteNode *touchedNode = (SKSpriteNode *)[self nodeAtPoint:location];
    
    if ([touchedNode isMemberOfClass:[CapSprite class]])
    {
        [touchedNode.physicsBody applyImpulse:CGVectorMake(100000, 0)];
    }
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
