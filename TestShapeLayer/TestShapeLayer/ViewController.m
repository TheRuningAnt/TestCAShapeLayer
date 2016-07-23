//
//  ViewController.m
//  TestShapeLayer
//
//  Created by 赵广亮 on 16/7/23.
//  Copyright © 2016年 zhaoguangliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createShapeLayer];
}

-(void)createShapeLayer{
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];   //创建CALayer对象
    shapeLayer.frame = CGRectMake(0, 0, 200, 200);   //设置frame
    shapeLayer.position = self.view.center;           //将shapeLayer放在视图的中心
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 200, 200)]; //使用贝塞尔曲线绘制一个圆形的路径
    path.lineCapStyle = kCGLineCapRound;    //贝塞尔线段端点格式  (该demo暂不做详细介绍 请参考我的其他博文有详细介绍)
    path.lineJoinStyle = kCGLineJoinRound;  //贝塞尔线段连接点格式 (该demo暂不做详细介绍 请参考我的其他博文有详细介绍)
    shapeLayer.path = path.CGPath;   //将shapeLayer的路径设置为绘制好的贝塞尔曲线(圆形)
    
    shapeLayer.fillColor = [UIColor redColor].CGColor;  //设置填充颜色
    shapeLayer.backgroundColor = [UIColor greenColor].CGColor;  //设置背景颜色
    
    shapeLayer.borderWidth = 4;                          //设置边框宽度
    shapeLayer.borderColor = [UIColor blueColor].CGColor; //设置边框颜色
    
    shapeLayer.shadowColor = [UIColor grayColor].CGColor;   //设置阴影颜色
    shapeLayer.shadowOffset = CGSizeMake(5, 15);             //设置阴影偏移量
    shapeLayer.shadowOpacity = 0.6;                        //设置阴影的透明度  默认为透明的 0.0
    
    shapeLayer.cornerRadius = 13;             //设置圆角
    shapeLayer.masksToBounds = true;          //将超出主图层范围的内容切掉  在UIView里这一属性对应的方法是clipsToBounds
    
    shapeLayer.lineWidth = 20;               //设置路径宽度(使用贝塞尔曲线绘制的路径宽度)
    shapeLayer.strokeColor = [UIColor blackColor].CGColor;  //设置路径颜色
    
    [self.view.layer addSublayer:shapeLayer];  //将主图层添加到视图图层上去并显示出来
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
