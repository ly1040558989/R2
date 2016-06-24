//
//  Person.h
//  DataStorage_archive
//
//  Created by lanouhn on 16/6/22.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

#warning 如果想将一个自定义对象保存到文件中必须实现NSCoding协议(此协议中包含两个必须实现的方法)
@interface Person : NSObject<NSCoding>

@property (nonatomic, copy)NSString *name;   // 姓名
@property (nonatomic, copy)NSString *gender; // 身高
@property (nonatomic, assign)NSInteger age;  // 年龄

@end
