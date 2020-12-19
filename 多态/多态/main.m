//
//  main.m
//  多态
//
//  Created by Link on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSMutableArray *animals = [[NSMutableArray alloc] initWithCapacity:1];
        
        Animal* dog = [[Dog alloc]initWithName:@"旺财"];
        [animals addObject:dog];
        
        Animal* cat = [[Cat alloc]initWithName:@"毛球"];
        [animals addObject:cat];
        
        for (Animal *item in animals) {
            NSLog(@"%@", [item shout]);
        }
    }
    return 0;
}
