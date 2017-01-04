//
//  ViewController.m
//  autoTableView
//
//  Created by iOSDeveloper on 2017/1/4.
//  Copyright © 2017年 kuke99. All rights reserved.
//

#import "ViewController.h"
#import "XSUnionExamViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"开始";
    
    XSUnionExamViewController *VC = [[XSUnionExamViewController alloc] init];
    
//    [self presentViewController:VC animated:YES completion:nil];
    [self.navigationController pushViewController:VC animated:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)goToUnionVC:(UIButton *)sender {
    XSUnionExamViewController *VC = [[XSUnionExamViewController alloc] init];
    
    //    [self presentViewController:VC animated:YES completion:nil];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
