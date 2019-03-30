//
//  package3ViewController.m
//  MGJRouterDemo
//
//  Created by 王开 on 2019/3/29.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "package3ViewController.h"

@interface package3ViewController ()

@end

@implementation package3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"第三个组件";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
    [self.view addGestureRecognizer:tap];
}
-(void)click:(UITapGestureRecognizer *)tap{
    if (self.block) {
        self.block(@"点击第三个组件");
    }
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
