//
//  AnimalFactory.m
//  工厂模式(Factory Pattern)
//
//  Created by Link on 2019/9/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import "AnimalFactory.h"
#import "Cat.h"
#import "Dog.h"

@implementation AnimalFactory

- (Animal*)creatAnimal:(Class)animalClass {
    if (animalClass == [Cat class]) {
        return [Cat new];
    } else if (animalClass == [Dog class]) {
        return [Dog new];
    } else {
        return nil;
    }
}

@end
