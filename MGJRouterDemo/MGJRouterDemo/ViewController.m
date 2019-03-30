//
//  ViewController.m
//  MGJRouterDemo
//
//  Created by 王开 on 2019/3/29.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "ViewController.h"
#import "MGJRouter.h"
//ViewController相当于一个组件需要和另外三个交互
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
//跳转第一个交互组件
- (IBAction)clickPackage1:(id)sender {
    [MGJRouter openURL:@"WK://Package1/PushPackage1VC" withUserInfo:@{@"navigation":self.navigationController} completion:nil];
}
//跳转第二个交互组件并携带参数
- (IBAction)clickPackage2:(id)sender {
    [MGJRouter openURL:@"WK://Package2/PushPackage2VC" withUserInfo:@{@"navigation":self.navigationController,
                                                                      @"title":@"第二个组件"
                                                                      } completion:nil];
}
- (IBAction)clickPackage3:(id)sender {
    [MGJRouter openURL:@"WK://Package3/PushPackage3VC" withUserInfo:@{@"navigation":self.navigationController,
                                                                      @"block":^(NSString *name){
        NSLog(@"%@",name);
    }} completion:nil];
}
- (IBAction)clickPackage32:(id)sender {
    [self.navigationController pushViewController:[MGJRouter objectForURL:@"WK://Package2/GetPackage2VC" withUserInfo:@{@"title":@"第二个组件"}] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
