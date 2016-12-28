//
//  PersonViewModel.h
//  youGuess
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface PersonViewModel : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, strong, readonly) Person *person;

@property (nonatomic, copy, readonly) NSString *nameText;

@property (nonatomic, copy, readonly) NSString *birthdateText;

@end
