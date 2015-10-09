//
//  GPMineController.m
//  03-权限控制
//
//  Created by qianfeng on 15-10-9.
//  Copyright (c) 2015年 肖喆. All rights reserved.
//

#import "GPMineController.h"
#import "GPMineDetailController.h"


@interface GPMineController ()

@end

@implementation GPMineController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 180, 40);
    [btn setTitle:@"点击跳转" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(btnTouch:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnTouch:(UIButton *)btn
{
    /*
    NSUserDefaults * ud = [NSUserDefaults standardUserDefaults];
    
    //如果没有去到用户名,说名没有登录过
    //那么就跳转到登录页面
    if (![ud objectForKey:@"name"])
    {
        //跳转到登录页面
        GPLoginController * login = [[GPLoginController alloc] init];
        UINavigationController * navLogin = [[UINavigationController alloc] initWithRootViewController:login];
        [self presentViewController:navLogin animated:YES completion:nil];
        
        return ;
    }
    */
    
    GPMineDetailController * detailController = [[GPMineDetailController alloc] init];
    
    [self.navigationController pushViewController:detailController animated:YES];
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
