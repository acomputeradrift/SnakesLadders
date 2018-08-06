//
//  main.m
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *jamie = [[Player alloc] init];
        PlayerManager *coach = [[PlayerManager alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        
        
        //---------Number of players
        
        
        //NSInteger entered = [coach.players count];
        while ([coach.players count] == 0){
//        BOOL didTheyInputValidNumber = NO;
//        while (didTheyInputValidNumber == NO) {
        
            NSString *inputStringForNumberofPlayers = [inputHandler userInputForPrompt:@"How many players?:"];
           int numberOfPlayers = [inputStringForNumberofPlayers intValue];
//            if (numberOfPlayers != nil){
                [coach createPlayer:numberOfPlayers];
                NSLog(@"\n%@",[coach.players componentsJoinedByString:@" "]);
//                didTheyInputValidNumber = YES;
//            }
//            else{
//                didTheyInputValidNumber = NO;
//            }
      }
        
        while (jamie.youWin == NO) {
        
            //---------Roll
            NSString *inputStringForRoll = [inputHandler userInputForPrompt:@"Please roll the die:"];
            if ([inputStringForRoll isEqualToString:@"roll"]||[inputStringForRoll isEqualToString:@"r"]){
                
                [jamie roll];
                
            }else {
                NSLog(@"Incorrect input, dumbass!");
            }
        }
    }
    return 0;
}
