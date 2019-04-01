//
//  Target_Package1ViewController.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "Target_Package1ViewController.h"
#import "Package1ViewController.h"
@implementation Target_Package1ViewController
- (UIViewController *)Action_Package1ViewController:(NSDictionary *)param{
    Package1ViewController *per = [[Package1ViewController alloc] init];
    per.titleLb = [param valueForKey:@"title"];
    per.image = [param valueForKey:@"image"];
    return per;
}
@end
