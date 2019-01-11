//
//  ViewControllerOne1.m
//  多重TabBarVC嵌套
//
//  Created by ZH on 2019/1/11.
//  Copyright © 2019 张豪. All rights reserved.
//

#import "ViewControllerOne1.h"
#import "TabBarControllerTwo.h"

@interface ViewControllerOne1 ()

@end

@implementation ViewControllerOne1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    [self createSwitchTabBarBtn];
}
// 模拟VC上有个按钮, 点击的时候切换tabBar
- (void)createSwitchTabBarBtn{
    UIButton *switchTabBarBtn = [UIButton buttonWithType:0];
    switchTabBarBtn.frame = CGRectMake(80, 150, 200, 100);
    [switchTabBarBtn setTitle:@"切换tabBar" forState:UIControlStateNormal];
    switchTabBarBtn.backgroundColor = [UIColor orangeColor];
    [switchTabBarBtn addTarget:self action:@selector(switchTabBarBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:switchTabBarBtn];
}
- (void)switchTabBarBtnClick{
    NSLog(@"点击了切换tabBar的按钮");
    TabBarControllerTwo *tabBabTwoVC = [[TabBarControllerTwo alloc] init];

    // 下面这种方法是直接切换了根控制器为TabBarTwo, 但是就不能返回TabBarOne了
//    self.view.window.rootViewController = tabBabTwoVC;
    
    // 下面这个方法是隐藏one的tabBar, 然后再push到tabBarTwo
    // 隐藏1的tabBar
    self.tabBarController.tabBar.hidden = YES;
    // 这里不能隐藏nav, 要不就不能返回到tabBarOne了
//    [self.navigationController setNavigationBarHidden:YES animated:YES];

    [self.navigationController pushViewController:tabBabTwoVC animated:YES];
    
    
}
// 当上一家页面完全出现的时候再重现tabBar
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.tabBarController.tabBar.hidden = NO; // 重现tabBar

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
