//
//  TabBarControllerTwo.m
//  多重TabBarVC嵌套
//
//  Created by ZH on 2019/1/11.
//  Copyright © 2019 张豪. All rights reserved.
//

#import "TabBarControllerTwo.h"
#import "ViewControllerTwo1.h"
#import "ViewControllerTwo2.h"
#import "ViewControllerTwo3.h"
#import "ViewControllerTwo4.h"

@interface TabBarControllerTwo ()
@property (nonatomic, strong)ViewControllerTwo1 *two1VC;
@property (nonatomic, strong)ViewControllerTwo2 *two2VC;
@property (nonatomic, strong)ViewControllerTwo3 *two3VC;
@property (nonatomic, strong)ViewControllerTwo4 *two4VC;

@end

@implementation TabBarControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.two1VC = [[ViewControllerTwo1 alloc] init];
    [self addChildVC:self.two1VC andTitle:@"two1"];
    
    self.two2VC = [[ViewControllerTwo2 alloc] init];
    [self addChildVC:self.two2VC andTitle:@"two2"];
    
    self.two3VC = [[ViewControllerTwo3 alloc] init];
    [self addChildVC:self.two3VC andTitle:@"two3"];
    
    self.two4VC = [[ViewControllerTwo4 alloc] init];
    [self addChildVC:self.two4VC andTitle:@"two4"];
    
}

- (void)addChildVC:(UIViewController *)vc andTitle:(NSString *)title{
    vc.title = title;
    UINavigationController *mainNav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:mainNav];
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
