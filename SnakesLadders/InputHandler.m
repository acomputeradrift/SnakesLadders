//
//  InputHandler.m
//  PizzaRestaurant
//
//  Created by Jamie on 2018-08-04.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *) userInputForPrompt: (NSString *) prompt {
    
    char inputChars[255];
    
    //    NSLog(@"%@", prompt);
    
    printf("%s", [prompt UTF8String]);
    fgets(inputChars, 255, stdin);
    NSString *inputwithEnter = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
  return finalInputString;
}

@end
