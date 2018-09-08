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
        int turn = -1;
        
        
        //---------Number of players
        
        
        //NSInteger entered = [coach.players count];
        while ([coach.players count] == 0){
            NSString *inputStringForNumberofPlayers = [inputHandler userInputForPrompt:@"How many players?:"];
            int numberOfPlayers = [inputStringForNumberofPlayers intValue];
            [coach createPlayer:numberOfPlayers];
            //NSLog(@"\n%@",[coach.players componentsJoinedByString:@" "]);
            
        }
        
        while (jamie.youWin == NO) {
            
            //---------Roll
             //if turn < array count-1 then turn = turn +1 else turn = 0
            if (turn < coach.players.count-1){
                turn ++;
            }else{
                turn = 0;
            }
            Player *currentPlayer = [coach.players objectAtIndex:turn];
            //grab the first person from the array
            NSString *inputStringForRoll = [inputHandler userInputForPrompt:[NSString stringWithFormat: @"%@, please roll the die:", currentPlayer.name]];
            if ([inputStringForRoll isEqualToString:@"roll"]||[inputStringForRoll isEqualToString:@"r"]){
                
                [currentPlayer roll];
                
            }else if ([inputStringForRoll isEqualToString:@"quit"]||[inputStringForRoll isEqualToString:@"q"]){
                [currentPlayer quitGame:currentPlayer];
                
            }else {
                NSLog(@"Incorrect input, dumbass!");
                turn --;
            }
        }
    }
    return 0;
}
