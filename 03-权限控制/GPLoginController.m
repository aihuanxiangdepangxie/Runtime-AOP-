//
//  GPLoginController.m
//  03-权限控制
//
//  Created by qianfeng on 15-10-9.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "GPLoginController.h"

@interface GPLoginController ()

@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *pwdText;

@end

@implementation GPLoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(btnCloseTouch:)];

}

- (void)btnCloseTouch:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)btnTouch:(id)sender {
    
    NSString * name = self.nameText.text;
    NSString * pwd = self.nameText.text;
    
    //系统提供的一个键值存储plist文件工具类
    //使用方法就是与可变字典对象相同
    NSUserDefaults * ud = [NSUserDefaults standardUserDefaults];
    
    [ud setObject:name forKey:@"name"];
    [ud setObject:pwd forKey:@"pwd"];
    
    //立即执行存储到plist文件中
    [ud synchronize];
    
    
}


@end
