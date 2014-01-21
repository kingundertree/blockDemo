//
//  DISecondViewController.m
//  blockDemo
//
//  Created by 夏至 on 14-1-21.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import "DISecondViewController.h"

#define IOS7_SDK_AVAILABLE 1

@interface DISecondViewController ()

@end

@implementation DISecondViewController
@synthesize callBack = _callBack;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"second title";
	// Do any additional setup after loading the view.
    if (IOS7_SDK_AVAILABLE) {
        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]){
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(callBack:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(10, 10, 300, 35);
    [btn setTitle:@"callBack" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:btn];
}
-(void)callBack:(UIButton *)btn{
    if(self.callBack)
        self.callBack(2);
}
     
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
