//
//  addItemViewController.m
//  ToDoList_programatically
//
//  Created by checkyh on 15/10/22.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import "addItemViewController.h"

@interface addItemViewController ()
@property UIBarButtonItem *doneButton;

@end


@implementation addItemViewController
-(IBAction)backOff:(id)sender
{
    ListViewController *listView=[self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count-2];
    listView.temp=self.textField.text;
    listView.confirmed=true;
    [self.navigationController popToViewController:listView animated:true];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _doneButton=[[UIBarButtonItem alloc]initWithTitle:@"OK" style:UIBarButtonItemStyleDone
                                               target:self
                                               action:@selector(backOff:)];
    self.navigationItem.rightBarButtonItem=_doneButton;
    // Do any additional setup after loading the view from its nib.
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
