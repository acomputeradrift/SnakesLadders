//
//  Player.h
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property int currentValue;
@property NSDictionary *playerDictionary;
@property BOOL youWin;



- (void)roll;

@end
