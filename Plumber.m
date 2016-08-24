//
//  Plumber.m
//  Marioo
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Plumber.h"

@implementation Plumber


- (void)repairHome
{
    id<PlumberDelegate> strongDelegate = self.delegate;
    BOOL foundLeak = ((arc4random() % 2) == 1);
    
    if (foundLeak)
    {
        if ([strongDelegate plumberShouldFixLeak:self])
        {
            NSLog(@"Fixed a leak!");
        } else
        {
            NSLog(@"Found a leak and didn't fix it!");
        }
        
    } else
    {
        NSLog(@"I found no leaks.");
    }
    
    BOOL shouldBlingOutToilet = [strongDelegate respondsToSelector:@selector(plumberShouldBlingOutToilet:)] && [strongDelegate plumberShouldBlingOutToilet:self];
    
    if (shouldBlingOutToilet)
    {
        NSLog(@"Bling Bling on ya toilet");
    } else
    {
        NSLog(@"And I didn't bling out your toilet...");
    }
    
    
}


@end
