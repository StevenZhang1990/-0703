//
//  ProgressBtn.m
//  进度条0703
//
//  Created by StevenZhang on 2018/7/3.
//  Copyright © 2018年 StevenZhang. All rights reserved.
//

#import "ProgressBtn.h"


@implementation ProgressBtn

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    /*
     1 圆心
     2 半径
     3 起始角度
     4 结束角度
     5 YES顺时针 NO逆时针
     */
    CGSize s = rect.size;
    
    CGPoint center = CGPointMake(s.width * 0.5, s.height * 0.5);
    
    CGFloat r = (s.width > s.height)? s.height*0.5 : s.width*0.5;
    
    CGFloat startAngle = -M_PI_2;
    
    CGFloat endAngle = self.progress * 2 * M_PI + startAngle;
    
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:r startAngle:startAngle endAngle:endAngle clockwise:YES];
    
    path.lineWidth = 5;
    path.lineCapStyle = kCGLineCapRound;
    [[UIColor greenColor] setStroke]; 
    
    [path stroke];
}


-(void)setProgress:(float)progress {
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    _progress = progress;
    
    if (_progress == 1.0) {

        [self setTitle:@"完成" forState:UIControlStateNormal];
    }
    else {
        
        NSString * ts = [NSString stringWithFormat:@"%f*100%%",_progress];
        [self setTitle:ts forState:UIControlStateNormal];
    }
    
    //强制刷新视图 setNeedsDisplay，就是自动调用 drawRect
    [self setNeedsDisplay];
}


@end
