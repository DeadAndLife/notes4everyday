//
//  ViewController.m
//  textFiledDemo
//
//  Created by iOSDeveloper on 2016/11/29.
//  Copyright © 2016年 ZXD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%f",[UIScreen mainScreen].bounds.size.width);
    self.textField.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"isFirstResponder:%d",self.view.isFirstResponder);
    NSLog(@"%d",self.textField.isFirstResponder);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"length:%ld,location:%ld",range.length,range.location);
    NSLog(@"string:%@",string);
    NSLog(@"textField.text:%@",textField.text);
    if (![string isEqualToString:@""]) {
    
        if (range.length + range.location + string.length >= 11) {
            
            if (range.length + range.location + string.length == 11) {
                NSMutableString *str = [NSMutableString stringWithString:self.textField.text];
                [str insertString:string atIndex:range.location];
                self.textField.text = str;
            }
            
            [self.textField resignFirstResponder];
            [self.view resignFirstResponder];
            NSLog(@"isFirstResponder:%d,%d",self.view.isFirstResponder,self.textField.isFirstResponder);
            return NO;
        }
        
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason{
    switch (reason) {
        case UITextFieldDidEndEditingReasonCommitted:
            NSLog(@"UITextFieldDidEndEditingReasonCommitted");
            break;
//        case UITextFieldDidEndEditingReasonCancelled://UIKIT_AVAILABLE_TVOS_ONLY(10_0)
//            NSLog(@"UITextFieldDidEndEditingReasonCancelled");
//            break;
        default:
            NSLog(@"other");
            break;
    }

}

@end
