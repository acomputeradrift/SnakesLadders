//
//  PlayerManager.m
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createPlayer:(int)playerNumber{
    for (int count=1; count <= playerNumber; count++) {
        //NSMutable string prefix is Player, suffix is
        Player *thisPlayer = [[Player alloc] init];
        NSString *playerString = @"Player";
        NSString *playerNumberString = [playerString stringByAppendingString:[NSString stringWithFormat:@"%d", count]];
        thisPlayer.name = playerNumberString;
        //NSLog(@"Created %@", playerNumberString);
        [self.players addObject:playerNumberString];
        
        
    }
}

@end
