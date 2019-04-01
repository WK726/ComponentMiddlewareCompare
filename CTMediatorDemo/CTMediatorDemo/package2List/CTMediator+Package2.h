//
//  CTMediator+Package2.h
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import <CTMediator/CTMediator.h>
typedef void(^likeBlock) (BOOL isLike);
@interface CTMediator (Package2)
-(UIViewController *)package2ViewControllerWithTitle:(NSString *)titleLb andBlock:(likeBlock)block;
@end
