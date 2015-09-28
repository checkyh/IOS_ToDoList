//
//  ToDoItem.h
//  ToDoList
//
//  Created by checkyh on 15/9/26.
//  Copyright © 2015年 checkyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@end
