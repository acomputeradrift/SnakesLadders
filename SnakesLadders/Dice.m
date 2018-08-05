//
//  Dice.m
//  ThreeLow v2
//
//  Created by Jamie on 2018-08-01.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int)roll{
    self.currentValue = arc4random_uniform(6)+1;
    return self.currentValue;
}
- (NSString *)description
{
    NSArray *dicePictures = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    return [NSString stringWithFormat:@"%@", dicePictures[self.currentValue-1]];
}
@end
