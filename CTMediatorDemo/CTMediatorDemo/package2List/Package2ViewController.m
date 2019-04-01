//
//  Package2ViewController.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "Package2ViewController.h"

@interface Package2ViewController ()

@end

@implementation Package2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.title = _titleLb;
    self.view.backgroundColor = [UIColor whiteColor];
}
- (IBAction)clickLike:(id)sender {
    if (self.block) {
        self.block(YES);
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (IBAction)clickUnLike:(id)sender {
    if (self.block) {
        self.block(NO);
        [self.navigationController popViewControllerAnimated:YES];
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
