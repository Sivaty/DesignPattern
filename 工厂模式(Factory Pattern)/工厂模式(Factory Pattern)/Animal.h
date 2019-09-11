//
//  Animal.h
//  工厂模式(Factory Pattern)
//
//  Created by Link on 2019/9/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject <AnimalProtocol>

- (void)run;

@end

NS_ASSUME_NONNULL_END
