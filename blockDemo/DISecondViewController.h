//
//  DISecondViewController.h
//  blockDemo
//
//  Created by 夏至 on 14-1-21.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CallBack)(int index);

@interface DISecondViewController : UIViewController
@property(nonatomic, copy)CallBack callBack;
@end
