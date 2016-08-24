//
//  Plumber.h
//  Marioo
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlumberDelegate;


@interface Plumber : NSObject

@property (nonatomic, weak) id<PlumberDelegate> delegate;

- (void)repairHome;


@end



@protocol PlumberDelegate <NSObject>

- (BOOL)plumberShouldFixLeak:(Plumber *)plumber;
@optional
- (BOOL)plumberShouldBlingOutToilet:(Plumber *)plumber;
@end
