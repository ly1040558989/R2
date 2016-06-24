//
//  Student.m
//  DataStorage_archive
//
//  Created by lanouhn on 16/6/22.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import "Student.h"

@implementation Student

// 在子类中重写这两个方法

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [super encodeWithCoder:aCoder];
    NSLog(@"调用了Student类中 encodeWithCoder:方法");
    [aCoder encodeFloat:self.height forKey:@"height"];

}


- (instancetype)initWithCoder:(NSCoder *)aDecoder {

    if (self = [super init]) {
        NSLog(@"调用了Student类中 initWithCoder:方法");
        self.height  = [aDecoder decodeFloatForKey:@"height"];
    }
    return self;
}




@end
