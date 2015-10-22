//
//  addItemViewController.h
//  ToDoList_programatically
//
//  Created by checkyh on 15/10/22.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ListViewController.h"
@interface addItemViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong,nonatomic) ToDoItem *toDoItem;
@end
