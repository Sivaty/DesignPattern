//
//  main.m
//  0-2 协议
//
//  Created by Link on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id<ChangeProtocol> cat = [[Cat alloc] initWithName:@"叮当喵"];
        id<ChangeProtocol> dog = [[Dog alloc] initWithName:@"叮当狗"];
        
        NSLog(@"%@", [cat changeThing:@"飞机"]);
        NSLog(@"%@", [dog changeThing:@"火箭"]);
    }
    return 0;
}
