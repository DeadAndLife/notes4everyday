//
//  NSArray+Next.m
//  OC应用
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import "NSArray+Next.h"

@implementation NSArray (Next)

-(void)next{
    for (id obj in self) {
        if (![obj isKindOfClass:[NSArray class]]) {
            NSLog(@"%@", obj);
        }else{
            [obj next];
        }
    }
}

@end
