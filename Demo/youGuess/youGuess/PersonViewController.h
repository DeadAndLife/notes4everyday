//
//  PersonViewController.h
//  youGuess
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Person;
@class PersonViewModel;

@interface PersonViewController : UIViewController

@property (nonatomic, strong) Person *model;

@property (nonatomic, strong) PersonViewModel *viewModel;

@end
