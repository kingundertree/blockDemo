//
//  DIFirstViewController.m
//  blockDemo
//
//  Created by 夏至 on 14-1-21.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import "DIFirstViewController.h"

#define IOS7_SDK_AVAILABLE 1

@interface DIFirstViewController ()

@end

@implementation DIFirstViewController
@synthesize lab = _lab;
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
	// Do any additional setup after loading the view.
    if (IOS7_SDK_AVAILABLE) {
        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]){
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    self.title = @"firstPage";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(pushNext:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(10, 10, 300, 35);
    [btn setTitle:@"push" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:btn];

    self.lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 55, 320, 44)];
    self.lab.text = @"你好";
    self.lab.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.lab];
}
-(void)pushNext:(UIButton *)btn{
    DISecondViewController *secondVC = [[DISecondViewController alloc] init];
    
    secondVC.callBack = ^(int index){
        self.lab.text = [NSString stringWithFormat:@"click %d", index];
    };
    
    [self.navigationController pushViewController:secondVC animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
