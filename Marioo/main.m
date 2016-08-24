//
//  main.m
//  Marioo
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Plumber.h"
#import "Customer.h"
#import "BadCustomer.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Customer *customer = [[Customer alloc] init];
        BadCustomer *badcustomer = [[BadCustomer alloc] init];
        Plumber *plumber = [[Plumber alloc] init];
        BOOL CustomerType = arc4random() % 2;
        [plumber repairHome];
        
        
        
        
    }
    return 0;
}
