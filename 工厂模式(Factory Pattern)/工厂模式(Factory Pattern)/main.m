//
//  main.m
//  工厂模式(Factory Pattern)
//
//  Created by Link on 2019/9/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "AnimalFactory.h"
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Animal* animal = [[AnimalFactory alloc] creatAnimal:[Cat class]];
        [animal run];
        
        Animal* animal2 = [[AnimalFactory alloc] creatAnimal:[Dog class]];
        [animal2 run];
    }
    return 0;
}
