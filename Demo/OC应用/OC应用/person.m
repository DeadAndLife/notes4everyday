//
//  person.m
//  OC应用
//
//  Created by iOSDeveloper on 2016/12/9.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import "person.h"
struct obj_layout{
    NSUInteger retained;
};

@implementation person

- (void)initWithName:(NSString *)name{
    self.name = name;
}

//+(instancetype)alloc{
//    size_t sizeT = 26;
//    int size = sizeof(struct obj_layout) + sizeof(sizeT);
//    struct obj_layout *p = (struct obj_layout *)calloc(1, size);
//    return (id0)(p+1);
//}

- (NSString *)description{
    
    return [NSString stringWithFormat:@"self:%s     class:%@    name:%@",(__bridge void *)self,self.class,self.name];
}

@end
