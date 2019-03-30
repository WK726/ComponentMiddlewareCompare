//
//  ModuleRouterManager.m
//  MGJRouterDemo
//
//  Created by 王开 on 2019/3/29.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "ModuleRouterManager.h"
#import "package1ViewController.h"
#import "package2ViewController.h"
#import "package3ViewController.h"
#import "MGJRouter.h"
//负责注册url,生成一个路由表
@implementation ModuleRouterManager
//把注册写在程序初始加载到内存中的方法里
+(void)load{
    
    //单纯的push某各类
    [MGJRouter registerURLPattern:@"WK://Package1/PushPackage1VC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *na = routerParameters[MGJRouterParameterUserInfo][@"navigation"];
        package1ViewController *vc = [[package1ViewController alloc] init];
        [na pushViewController:vc animated:YES];
    }];
    
    //push的某个类里携带参数
    [MGJRouter registerURLPattern:@"WK://Package2/PushPackage2VC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *na = routerParameters[MGJRouterParameterUserInfo][@"navigation"];
        package2ViewController *vc = [[package2ViewController alloc] init];
        vc.navigationTitle = routerParameters[MGJRouterParameterUserInfo][@"title"];
        [na pushViewController:vc animated:YES];
    }];
    
    //push的某个类里携带回调参数
    [MGJRouter registerURLPattern:@"WK://Package3/PushPackage3VC" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *na = routerParameters[MGJRouterParameterUserInfo][@"navigation"];
        package3ViewController *vc = [[package3ViewController alloc] init];
        void(^block)(NSString *name) = routerParameters[MGJRouterParameterUserInfo][@"block"];
        vc.block = block;
        [na pushViewController:vc animated:YES];
    }];
    
    //携带返回信息进入objectForURL中
    [MGJRouter registerURLPattern:@"WK://Package2/GetPackage2VC" toObjectHandler:^id(NSDictionary *routerParameters) {
        package2ViewController *vc = [[package2ViewController alloc] init];
        vc.navigationTitle = routerParameters[MGJRouterParameterUserInfo][@"title"];
        return vc;
    }];
}
@end
