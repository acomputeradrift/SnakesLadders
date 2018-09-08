//
//  Player.h
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property int currentValue;
@property (nonatomic, strong) NSDictionary *playerDictionary;
@property BOOL youWin;
@property (nonatomic, strong) NSString *name;




- (void)roll;
- (void)quitGame: (int)whosTurn :(NSMutableArray*)players;

@end
