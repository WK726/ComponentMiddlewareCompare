//
//  CTMediator+Package1.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "CTMediator+Package1.h"

@implementation CTMediator (Package1)
-(UIViewController *)package1ViewControllerWithImgName:(NSString *)icon andTitleName:(NSString *)title{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:title forKey:@"title"];
    [dic setValue:icon forKey:@"image"];
    return [self performTarget:@"Package1ViewController" action:@"Package1ViewController" params:dic shouldCacheTarget:NO];
}
@end
