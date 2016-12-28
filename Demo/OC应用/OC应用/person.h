//
//  person.h
//  OC应用
//
//  Created by iOSDeveloper on 2016/12/9.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject

@property (nonatomic, strong) NSString *name;

- (void)initWithName:(NSString *)name;

@end
