//
//  TabBarControllerOne.m
//  多重TabBarVC嵌套
//
//  Created by ZH on 2019/1/11.
//  Copyright © 2019 张豪. All rights reserved.
//

#import "TabBarControllerOne.h"
#import "ViewControllerOne1.h"
#import "ViewControllerOne2.h"
#import "ViewControllerOne3.h"
#import "ViewControllerOne4.h"

@interface TabBarControllerOne ()
@property (nonatomic, strong)ViewControllerOne1 *one1VC;
@property (nonatomic, strong)ViewControllerOne2 *one2VC;
@property (nonatomic, strong)ViewControllerOne3 *one3VC;
@property (nonatomic, strong)ViewControllerOne4 *one4VC;

@end

@implementation TabBarControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.one1VC = [[ViewControllerOne1 alloc] init];
    [self addChildVC:self.one1VC andTitle:@"one1"];

    self.one2VC = [[ViewControllerOne2 alloc] init];
    [self addChildVC:self.one2VC andTitle:@"one2"];

    self.one3VC = [[ViewControllerOne3 alloc] init];
    [self addChildVC:self.one3VC andTitle:@"one3"];

    self.one4VC = [[ViewControllerOne4 alloc] init];
    [self addChildVC:self.one4VC andTitle:@"one4"];

    
    
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
