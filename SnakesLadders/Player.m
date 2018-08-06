//
//  Player.m
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Player.h"


@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playerDictionary = @{
                                    //ladders
                                         @4: @14,
                                         @9: @31,
                                         @20: @38,
                                         @28: @84,
                                         @40: @59,
                                         @51: @67,
                                         @63: @81,
                                    //snakes
                                         @17: @7,
                                         @64: @60,
                                         @89: @26,
                                         @64: @60,
                                         @95: @75,
                                         @99: @78,
                                         };
        _currentSquare = 0;
        _currentValue = 0;
    }
    return self;
}

- (void)roll{
    self.currentValue = arc4random_uniform(6)+1;
    self.currentSquare = self.currentSquare + self.currentValue;
    NSLog(@"Your roll :\n%d",self.currentValue);
    //jamie.currentSquare =0;
    NSLog (@"You are on space number %ld", (long)self.currentSquare);
    if (self.currentSquare >= 100){
        NSLog (@"You win");
    }
   NSNumber *currentSquareObject = self.playerDictionary[[NSNumber numberWithInteger:self.currentSquare]];
    if (currentSquareObject){
        NSLog (@"snake or ladder dude");
        NSInteger currentSquareInteger = [currentSquareObject integerValue];
        self.currentSquare = currentSquareInteger;
    }
//    NSNumber *endValue = [self.playerDictionary objectForKey:currentSquareObject];
//    self.currentSquare = [endValue integerValue];
//        NSLog (@"snake or ladder dude");
    }
    //NSNumber *value = [self.playerDictionary[(void)(%@), currentSquareObject];
        

    
    

- (NSString *)description
{
    NSArray *dicePictures = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [NSString stringWithFormat:@"%@", dicePictures[self.currentValue-1]];
}
@end