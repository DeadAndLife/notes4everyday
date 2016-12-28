//
//  PersonViewController.m
//  youGuess
//
//  Created by iOSDeveloper on 2016/12/13.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#define MVC 0

#import "PersonViewController.h"
#import "Person.h"
#import "PersonViewModel.h"
#import "ForYouTableViewController.h"

@interface PersonViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

- (IBAction)nextController:(UIButton *)sender;

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
#if MVC
    if (self.model.salutation.length > 0) {
        
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
        
    } else {
        
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
        
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    
    self.birthdateLabel.text = [dateFormatter stringFromDate:self.model.birthdate];
#else
    //    先定义一个遵循某个历法的日历对象
    NSCalendar *greCalendar = [NSCalendar currentCalendar];
    //    通过已定义的日历对象，获取某个时间点的NSDateComponents表示，并设置需要表示哪些信息（NSCalendarUnitYear, NSCalendarUnitMonth等）
    NSDateComponents *dateComponents = [greCalendar components:NSCalendarUnitYear | NSCalendarUnitMonth fromDate:[NSDate date]];
    dateComponents.day = 1;
    
    NSDate *date = [greCalendar dateFromComponents:dateComponents];
    
    NSDateFormatter* dateFormatter =[[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    
    self.nameLabel.text = [dateFormatter stringFromDate:date];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    self.birthdateLabel.text = [NSString stringWithFormat:@"%@", dateComponents.date];
//    self.nameLabel.text = self.viewModel.nameText;
//    
//    self.birthdateLabel.text = self.viewModel.birthdateText;
    
#endif
    
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)nextController:(UIButton *)sender {
    ForYouTableViewController *tableViewVC = [[ForYouTableViewController alloc] init];
    [self presentViewController:tableViewVC animated:YES completion:nil];
}

@end
