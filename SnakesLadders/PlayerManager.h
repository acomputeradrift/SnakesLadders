//
//  PlayerManager.h
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;

- (void) createPlayer : (int)playerNumber;

@end
