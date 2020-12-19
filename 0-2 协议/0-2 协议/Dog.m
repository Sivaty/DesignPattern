//
//  Dog.m
//  多态
//
//  Created by Link on 2020/12/19.
//

#import "Dog.h"


@interface Dog () 

@end

@implementation Dog

- (NSString *)getShoutSound {
    return @"汪";
}

- (nonnull NSString *)changeThing:(nonnull NSString *)thing { 
    return [NSString stringWithFormat:@"%@ 我能变出 %@", [self shout], thing];
}

@end
