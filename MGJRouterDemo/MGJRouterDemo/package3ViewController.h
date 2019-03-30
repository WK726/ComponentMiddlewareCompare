//
//  package3ViewController.h
//  MGJRouterDemo
//
//  Created by 王开 on 2019/3/29.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^gestureClickBlock) (NSString *name);
@interface package3ViewController : UIViewController
@property (nonatomic,copy) gestureClickBlock block;
@end
