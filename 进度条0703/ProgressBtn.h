//
//  ProgressBtn.h
//  进度条0703
//
//  Created by StevenZhang on 2018/7/3.
//  Copyright © 2018年 StevenZhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressBtn : UIButton

@property (nonatomic, assign) float progress;

@property (nonatomic , strong) UIBezierPath * path;

@end
