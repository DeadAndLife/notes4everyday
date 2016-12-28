//
//  Person.m
//  youGuess
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate{
    
    _salutation = salutation;
    _firstName = firstName;
    _lastName = lastName;
    _birthdate = birthdate;
    
    return self;
    
}

@end
