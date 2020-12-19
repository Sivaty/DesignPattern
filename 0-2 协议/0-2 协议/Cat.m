//
//  Cat.m
//  多态
//
//  Created by Link on 2020/12/19.
//

#import "Cat.h"

@interface Cat () 

@end

@implementation Cat

- (NSString *)getShoutSound {
    return @"喵";
}

- (nonnull NSString *)changeThing:(nonnull NSString *)thing {
    return [NSString stringWithFormat:@"%@ 我能变出 %@", [self shout], thing];
}

@end
