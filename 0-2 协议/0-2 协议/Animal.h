//
//  Animal.h
//  多态
//
//  Created by Link on 2020/12/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

- (instancetype)initWithName:(NSString *)name;

- (NSString *)shout;

@end

NS_ASSUME_NONNULL_END
