//
//  ListViewController.m
//  ToDoList_programatically
//
//  Created by checkyh on 15/10/21.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import "ListViewController.h"
#include "addItemViewController.h"
@interface ListViewController ()
@property (strong, nonatomic) UITableView *tv;
@end

@implementation ListViewController
-(void)add:(id)sender{
  addItemViewController *addItemController =
    [[addItemViewController alloc] init];
    [self.navigationController pushViewController:addItemController animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.barStyle
    = UIBarStyleBlackOpaque;
    _tv = [[UITableView alloc] initWithFrame:self.view.frame
                                       style:UITableViewStyleGrouped];
    [self.view addSubview:_tv];
    
    _tv.frame = self.view.bounds;
    UIBarButtonItem *addButton=[[UIBarButtonItem alloc]initWithTitle:@"+" style:UIBarButtonItemStyleDone target:self action:@selector(add:)];
    self.navigationItem.rightBarButtonItem=addButton;
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

@end
