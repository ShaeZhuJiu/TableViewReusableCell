//
//  MainViewController.m
//  TableViewReusableCell
//
//  Created by 谢鑫 on 2019/5/19.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MainViewController.h"
#import "ImageCell.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"单元格重用"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setTableView:[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain]];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view.
}

#pragma mark -Table view delegate -
#pragma mark -Table view data Source -
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return CGRectGetWidth([UIScreen mainScreen].bounds);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
#if 0
-(UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ImageCell *cell=[[ImageCell alloc]init];
    [cell updateCellAtRow:indexPath.row];
    return cell;
}
#else
-(UITableViewCell *)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ImageCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
    if (!cell) {
        cell=[[ImageCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ImageCell"];
    }
    [cell updateCellAtRow:indexPath.row];
    return cell;
}
#endif
@end
