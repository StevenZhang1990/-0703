//
//  ViewController.m
//  进度条0703
//
//  Created by StevenZhang on 2018/7/3.
//  Copyright © 2018年 StevenZhang. All rights reserved.
//

#import "ViewController.h"
#import "ProgressBtn.h"


@interface ViewController ()

@property (nonatomic , strong) ProgressBtn * btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.btn = [[ProgressBtn alloc] init];
    self.btn.frame = CGRectMake(100, 200, 200, 100);
    self.btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.btn];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self progressInt];
}

- (void)progressInt {
    
    CGFloat a = 0.0;
    
    for (NSInteger i=0; i<=100; i++) {
        
        a=0.01*i;
        
        self.btn.progress = a;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
