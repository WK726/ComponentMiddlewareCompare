//
//  CTMediator+Package2.m
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import "CTMediator+Package2.h"

@implementation CTMediator (Package2)
-(UIViewController *)package2ViewControllerWithTitle:(NSString *)titleLb andBlock:(likeBlock)block{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:titleLb forKey:@"titleLb"];
    [dic setValue:block forKey:@"lickBlock"];
    
    return [self performTarget:@"Package2ViewController" action:@"Package2ViewController" params:dic shouldCacheTarget:NO];
    ;}
@end
