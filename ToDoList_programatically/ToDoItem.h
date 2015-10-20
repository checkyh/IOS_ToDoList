//
//  ToDoItem.h
//  ToDoList_programatically
//
//  Created by checkyh on 15/10/21.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@end
