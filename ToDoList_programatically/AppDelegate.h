//
//  AppDelegate.h
//  ToDoList_programatically
//
//  Created by checkyh on 15/10/19.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "ListViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong,nonatomic) ListViewController *listController;

@property (strong,nonatomic) UINavigationController *navController;

@end

