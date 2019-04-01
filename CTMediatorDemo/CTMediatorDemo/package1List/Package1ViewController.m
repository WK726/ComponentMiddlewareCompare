//
//  Package1ViewController.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/3/31.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "Package1ViewController.h"

@interface Package1ViewController ()

@end

@implementation Package1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.image]];
    icon.frame = CGRectMake((self.view.frame.size.width-100)/2, (self.view.frame.size.height-100)/2, 100, 100);
    [self.view addSubview:icon];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = self.titleLb;
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
