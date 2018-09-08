//
//  PlayerManager.h
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property NSInteger currentIndex;

- (void) createPlayer : (int)playerNumber;
- (void)roll;
//- (NSString*)output;
//- (Player*)currentPlayer;

@end
