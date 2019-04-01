//
//  ViewController.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/3/31.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+Package2.h"
#import "CTMediator+Package1.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *resultBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)click1:(id)sender {
    UIViewController *con = [[CTMediator sharedInstance] package1ViewControllerWithImgName:@"title" andTitleName:@"第一个标题"];
    [self.navigationController pushViewController:con animated:YES];
}
- (IBAction)click2:(id)sender {
    UIViewController *con = [[CTMediator sharedInstance] package2ViewControllerWithTitle:@"选择喜欢或者是不喜欢" andBlock:^(BOOL isLike) {
        if (isLike) {
            self.resultBtn.titleLabel.text = @"喜欢";
        } else {
            self.resultBtn.titleLabel.text = @"不喜欢";
        }
    }];
    [self.navigationController pushViewController:con animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
