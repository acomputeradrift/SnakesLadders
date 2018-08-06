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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *jamie = [[Player alloc] init];
        
        while (TRUE) {
            
            InputHandler *inputHandler = [[InputHandler alloc] init];
       
            
            NSString *inputString = [inputHandler userInputForPrompt:@"Please roll the die:"];
            
            if ([inputString isEqualToString:@"roll"]||[inputString isEqualToString:@"r"]){
                
                [jamie roll];
//                NSLog(@"Your roll :\n%d",jamie.currentValue);
//                //jamie.currentSquare =0;
//                NSLog (@"You are on space number %ld", (long)jamie.currentSquare);
                
                
            }else {
                NSLog(@"Incorrect input, dumbass!");
            }
        }
    }
    return 0;
}
