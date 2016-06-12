//
//  ViewController.m
//  RunTimeDemo
//
//  Created by voidxin on 16/6/7.
//  Copyright © 2016年 wugumofang. All rights reserved.
//

#import "ViewController.h"
#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import "Test3ViewController.h"
#import "Test4ViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,copy)NSArray *vcArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.vcArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *flag=@"CELL";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:flag];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:flag];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"runtime Text%ld",indexPath.row+1];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc=self.vcArray[indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)vcArray{
    if (!_vcArray) {
         UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _vcArray=@[[mainStoryBoard instantiateViewControllerWithIdentifier:@"Test1ViewController"],[mainStoryBoard instantiateViewControllerWithIdentifier:@"Test2ViewController"],[mainStoryBoard instantiateViewControllerWithIdentifier:@"Test3ViewController"],[mainStoryBoard instantiateViewControllerWithIdentifier:@"Test4ViewController"]];
    }
    return _vcArray;
}

@end
