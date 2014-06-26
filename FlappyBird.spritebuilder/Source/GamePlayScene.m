#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta;
    
    if (timeSinceObstacle > 2.0f) {
        [self addObstacle]; //after 2 seconds, add a new obstacle and then reset the timer
        timeSinceObstacle =0.0f;
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    [character flap];
}

@end
