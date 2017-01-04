//
//  XSUnionExamViewController.m
//  autoTableView
//
//  Created by iOSDeveloper on 2017/1/4.
//  Copyright © 2017年 kuke99. All rights reserved.
//

#import "XSUnionExamViewController.h"
#import "XSUnionExamTableViewCell.h"

@interface XSUnionExamViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSTimer *_timer;
}

@property (weak, nonatomic) IBOutlet UITableView *unionTableView;

@end

@implementation XSUnionExamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated{
    [self startTime];
}

- (void)viewDidDisappear:(BOOL)animated{
    [self stopTime];
}

- (void)scrollTableView{
    CGPoint offset = self.unionTableView.contentOffset;
    if (offset.y >= (self.unionTableView.contentSize.height - [UIScreen mainScreen].bounds.size.height)) {
        offset.y = 0;
    }else{
        offset.y = offset.y + 1;
    }
    
    self.unionTableView.contentOffset = offset;
}

/**
 scrollview开始滚动

 @param scrollView scrollView
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"%@",scrollView);
    [self stopTime];
}

/**
 scrollview结束滚动

 @param scrollView scrollView
 @param decelerate decelerate
 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"%@",scrollView);
    [self startTime];
}

/**
 启动定时器
 */
- (void)startTime{
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(scrollTableView) userInfo:nil repeats:YES];
    [_timer fire];
    [[NSRunLoop mainRunLoop]addTimer:_timer forMode:NSRunLoopCommonModes];
}

/**
 结束定时器
 */
-(void)stopTime{
    [_timer invalidate];//停止定时器
    _timer = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20 + 12;//数组数量 + 一页最多的个数
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [UIScreen mainScreen].bounds.size.height / 12;//一页最多12个
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XSUnionExamTableViewCell *cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"rank"];
    
    if (!cell) {
        cell = [[NSBundle mainBundle]loadNibNamed:@"XSUnionExamTableViewCell" owner:self options:nil][2];
    }
    
    NSInteger num = indexPath.row % 20 + 1;//当前行应加载的内容索引

    cell.number.text = [NSString stringWithFormat:@"%ld",num];
    cell.studentName.text = [NSString stringWithFormat:@"我是第 %ld 名",num];
    cell.studentScore.text = [NSString stringWithFormat:@"%ld",100 - num];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
