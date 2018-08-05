//
//  main.m
//  SnakesLadders
//
//  Created by Jamie on 2018-08-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (TRUE) {
            
            InputHandler *inputHandler = [[InputHandler alloc] init];
            Dice *die = [[Dice alloc] init];
            
            NSString *inputString = [inputHandler userInputForPrompt:@"Please roll the die:"];
            
            if ([inputString isEqualToString:@"roll"]||[inputString isEqualToString:@"r"]){
                [die roll];
                NSLog(@"Your roll :\n%@",[die description]);
            }else {
                NSLog(@"Incorrect input, dumbass!");
            }
        }
    }
    return 0;
}
