//
//  Package2ViewController.h
//  CTMediatorDemo
//
//  Created by 王开 on 2019/4/1.
//  Copyright © 2019年 com.wk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^likeBlock) (BOOL isLike);
@interface Package2ViewController : UIViewController
@property(nonatomic,copy) likeBlock block;
@property(nonatomic,copy) NSString *titleLb;
@end
