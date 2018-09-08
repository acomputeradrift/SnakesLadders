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
        Player *currentPlayer = [[Player alloc] init];
        PlayerManager *coach = [[PlayerManager alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        int whosTurn = -1;
        
        
        //---------Number of players
        
        
        //NSInteger entered = [coach.players count];
        while ([coach.players count] == 0){
            NSString *inputStringForNumberofPlayers = [inputHandler userInputForPrompt:@"How many players?:"];
            int numberOfPlayers = [inputStringForNumberofPlayers intValue];
            [coach createPlayer:numberOfPlayers];
            //NSLog(@"\n%@",[coach.players componentsJoinedByString:@" "]);
            
        }
        
        while (currentPlayer.youWin == NO) {
            
            //---------GamePlay
            if (whosTurn < coach.players.count-1){
                whosTurn ++;
            }else{
                whosTurn = 0;
            }
            currentPlayer = [coach.players objectAtIndex:whosTurn];
            //grab the first person from the array
            NSString *inputStringForRoll = [inputHandler userInputForPrompt:[NSString stringWithFormat: @"%@, please roll the die:", currentPlayer.name]];
            if ([inputStringForRoll isEqualToString:@"roll"]||[inputStringForRoll isEqualToString:@"r"]){
                
                [currentPlayer roll];
                
            }else if ([inputStringForRoll isEqualToString:@"quit"]||[inputStringForRoll isEqualToString:@"q"]){
                [currentPlayer quitGame:whosTurn];
                
            }else {
                NSLog(@"Incorrect input, dumbass!");
                whosTurn --;
            }
        }
    }
    return 0;
}
