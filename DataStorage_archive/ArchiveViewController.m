//
//  ArchiveViewController.m
//  DataStorage_archive
//
//  Created by lanouhn on 16/6/22.
//  Copyright © 2016年 lanou3g. All rights reserved.
//


//----------------------- 归档 -----------------------
/*
 归档可以实现把自定义的对象放在文件中

 1⃣️保存数据过程
 ① 创建对象
 Person *person = [Person alloc]init];
 person.name = @"tanglaiyou";
 person.gender = @"man";
 person.age = 23;
 
 ② 获取文件路径
 NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
 NSString *path = [docPath stringByAppendingPathComponent:@"person.info"];
 
 ③ 将自定义的对象保存到文件中
 [NSKeyedArchiver archiverRootObject:person toFile:path];
 
 2⃣️读取数据过程
 ① 获取文件路径
 NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumenDirectory, NSUserDomainMask, YES) lastObject];
 NSString *path = [docPath stringByAppendingPathComponent:@"person.info"];
 
 ② 从文件中读取对象
 Person *person = [NSKeyedUnarchiveer UnarchiveObjectWithFilePath:path];
 
 3⃣️遵循NSCoding协议,并实现该协议中的两个方法
 
 4⃣️如果是继承,则子类一定要重写NSCoding协议中的那两个方法,调用父类对该方法的实现,并对特有属性的 归档/反归档 进行说明
 
 🈚️通过plist保存的数据是直接显示的,不安全.通过归档方法保存的数据在文件中打开是乱码的,更安全.
 
 */



#import "ArchiveViewController.h"
#import "Person.h"
#import "Student.h"

@interface ArchiveViewController ()
- (void)saveBtnOnclick:(id)sender;
- (void)readBtnOnclick:(id)sender;

@end

@implementation ArchiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 归档
- (IBAction)saveBtnOnclick:(id)sender {
    // 1 创建对象
    
//    Person *person = [[Person alloc]init];
//    person.name = @"tanglaiyou";
//    person.gender = @"man";
//    person.age = 23;
    
    Student *student = [[Student alloc]init];
    student.name = @"pangyuanyuan";
    student.gender = @"girl";
    student.age = 21;
    student.height = 160;
    
    // 2 获取文件路径
    
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    
//    NSString *path = [docPath stringByAppendingPathComponent:@"person.info"];
    
    NSString *path = [docPath stringByAppendingPathComponent:@"student.info"];
    NSLog(@"path = %@", path);
    
    // 3 将自定义的对象保存到文件中
    
//    [NSKeyedArchiver archiveRootObject:person toFile:path];
    
    [NSKeyedArchiver archiveRootObject:student toFile:path];
    
}

// 反归档
- (IBAction)readBtnOnclick:(id)sender {
    // 1 获取文件路径

    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    
//    NSString *path = [docPath stringByAppendingPathComponent:@"person.info"];
    
    NSString *path = [docPath stringByAppendingPathComponent:@"student.info"];
    NSLog(@"path = %@", path);
    
    // 2 从文件中读取对象
    
//    Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
//    NSLog(@"%@ - %@ - %ld", person.name, person.gender, person.age);
    
    Student *student = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@ - %@ - %ld - %f", student.name, student.gender, student.age, student.height);
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
