//
//  Person.h
//  youGuess
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate;

@property (nonatomic, copy, readonly) NSString *salutation;

@property (nonatomic, copy, readonly) NSString *firstName;

@property (nonatomic, copy, readonly) NSString *lastName;

@property (nonatomic, copy, readonly) NSDate *birthdate;

@end
