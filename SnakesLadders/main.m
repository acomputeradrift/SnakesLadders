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
        
        //---------Setup
        
        Player *currentPlayer = [[Player alloc] init];
        PlayerManager *coach = [[PlayerManager alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        int whosTurn = -1;
        Boolean newGame = YES;
        
        while (newGame == YES){
            //---------Input number of players
            
            while ([coach.players count] == 0){
                NSString *inputStringForNumberofPlayers = [inputHandler userInputForPrompt:@"How many players?:"];
                int numberOfPlayers = [inputStringForNumberofPlayers intValue];
                [coach createPlayer:numberOfPlayers];
            }
            
            while (currentPlayer.youWin == NO && [coach.players count] != 0){
                
                //---------GamePlay
                if (whosTurn < coach.players.count-1){
                    whosTurn ++;
                }else{
                    whosTurn = 0;
                }
                currentPlayer = [coach.players objectAtIndex:whosTurn];
                NSString *inputStringForRoll = [inputHandler userInputForPrompt:[NSString stringWithFormat: @"%@, please roll the die:", currentPlayer.name]];
                if ([inputStringForRoll isEqualToString:@"roll"]||[inputStringForRoll isEqualToString:@"r"]){
                    
                    [currentPlayer roll];
                    
                }else if ([inputStringForRoll isEqualToString:@"quit"]||[inputStringForRoll isEqualToString:@"q"]){
                    [currentPlayer quitGame:whosTurn :coach.players];
                    whosTurn --;
                }else {
                    NSLog(@"Incorrect input, dumbass!");
                    whosTurn --;
                }
            }
            NSString *inputStringForNewGame = [inputHandler userInputForPrompt:@"Anyone up for a new game? (Y/N):"];
            if ([inputStringForNewGame isEqualToString:@"y"]) {
                newGame = YES;
            }else{
                newGame = NO;
                NSLog(@"Alright, be that way.  Hurumph!");
            }
        }
    }
    return 0;
}
