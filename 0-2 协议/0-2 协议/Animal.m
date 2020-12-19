//
//  Animal.m
//  多态
//
//  Created by Link on 2020/12/19.
//

#import "Animal.h"

@interface Animal ()

@property (nonatomic, assign) NSInteger shoutNum;

@property (nonatomic, copy) NSString *name;

@end

@implementation Animal

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (NSInteger)shoutNum {
    return 3;
}

- (NSString *)shout {
    NSMutableString * result = [[NSMutableString alloc] initWithString:@""];
    
    for (int i = 0; i < self.shoutNum; i++) {
        [result appendString:[self getShoutSound]];
    }
    
    return [NSString stringWithFormat:@"我的名字是%@ %@", self.name, result];
}

- (NSString *)getShoutSound {
    return @"";
}

@end
