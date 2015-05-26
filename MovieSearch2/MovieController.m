//
//  MovieController.m
//  MovieSearch2
//
//  Created by Taylor Mott on 22 May 15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MovieController.h"
#import "NetWorkController.h"

@implementation MovieController

+ (MovieController *)sharedInstance {
    
    static MovieController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [MovieController new];
    });
    return sharedInstance;
    
}

- (void)getResultMovies:(NSString *)name completion:(void (^))(BOOL)completion
{
    NSString *netWorkPath = [NetWorkController baseURLString];
    
}
@end