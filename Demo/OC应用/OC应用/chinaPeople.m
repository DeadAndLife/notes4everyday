//
//  chinaPeople.m
//  OC应用
//
//  Created by iOSDeveloper on 2016/12/9.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import "chinaPeople.h"

@implementation chinaPeople

-(void)dealloc{
    self.sex = nil;
    [super dealloc];
}

- (NSString *)description{
    
    return [NSString stringWithFormat:@"self:%s     class:%@    name:%@     sex:%@",(__bridge void *)self,self.class,self.name,self.sex];
}

@end
