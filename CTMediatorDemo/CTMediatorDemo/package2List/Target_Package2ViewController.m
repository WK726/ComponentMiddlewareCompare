//
//  Target_Package2ViewController.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "Target_Package2ViewController.h"
#import "Package2ViewController.h"
@implementation Target_Package2ViewController
-(UIViewController *)Action_Package2ViewController:(NSDictionary *)parm{
    Package2ViewController *pack = [[Package2ViewController alloc] init];
    pack.titleLb = parm[@"titleLb"];
    pack.block = parm[@"lickBlock"];
    
    return pack;
}
@end
