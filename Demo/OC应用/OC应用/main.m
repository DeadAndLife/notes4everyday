//
//  main.m
//  OC应用
//
//  Created by iOSDeveloper on 2016/12/9.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"
#import "chinaPeople.h"
#import "NSArray+Next.h"

int main(int argc, const char * argv[]) {

//        person *onePeople = [[person alloc] init];
//        onePeople.name = @"123";
//        NSLog(@"%@",onePeople);
////        [onePeople retain];
//    
//        NSLog(@"%ld",onePeople.retainCount);
//        onePeople = [[chinaPeople alloc] init];
//        [onePeople setValue:@"男" forKey:@"sex"];
//        NSLog(@"%@",onePeople);
//        NSLog(@"%ld",onePeople.retainCount);
//
//    [onePeople release];
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@1, @[@4, @3], @6, @[@5, @[@1, @0]]]];
    
    [array next];
    
    return 0;
}
