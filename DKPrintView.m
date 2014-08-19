//
//  DKPrintView.m
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import "DKPrintView.h"


@interface DKPrintView ()
{
    CGPoint beginP;
    CGPoint endP;
    CAShapeLayer *lineLayer;
    UIBezierPath *linePath;
}
@end

@implementation DKPrintView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
       
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGContextSetFillColorWithColor(ctx, [[UIColor blueColor] CGColor]);
//    CGContextSetLineWidth(ctx, 1.0f);
//    // 创建一个Path句柄
//    CGMutablePathRef pathRef = CGPathCreateMutable();
//    
//    // 初始化该path到一个初始点
//    CGPathMoveToPoint(pathRef, &CGAffineTransformIdentity, beginP.x, beginP.y);
//    
//    // 添加一条直线，从初始点到该函数指定的坐标点
//    CGPathAddLineToPoint(pathRef, &CGAffineTransformIdentity, endP.x, endP.y);
//    
//    // 关闭该path
//    CGPathCloseSubpath(pathRef);
//    //
//    //    CGContextMoveToPoint(ctx, beginP.x, beginP.y);
//    //    CGContextAddLineToPoint(ctx, endP.x, endP.y);
//    // 设置描边颜色
//    CGContextSetRGBStrokeColor(ctx, 0.99f, 0.01f, 0.02f,1.0f);
//    
//    // 将此path添加到Quartz上下文中
//    CGContextAddPath(ctx, pathRef);
//    
//    // 对上下文进行描边
//    CGContextStrokePath(ctx);
//    
    // 释放该path
    // CGPathRelease(pathRef);
    // CGContextStrokePath(ctx);
    
}

-(void)setNeedsDisplay{
    [super setNeedsDisplay];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    beginP = location;
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    endP = beginP;
    beginP = location;
    NSLog(@"\n%f , %f \n%f, %f",beginP.x,beginP.y,endP.x,endP.y);
    
    [self addline];
    
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    [self updateStatusView:location];
}

- (void)addline{
    lineLayer = [CAShapeLayer new];
    [self.layer addSublayer:lineLayer];
    lineLayer.frame = self.bounds;
    lineLayer.lineWidth = 1;
    lineLayer.strokeColor = [UIColor redColor].CGColor;
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path moveToPoint:beginP];
    [path addLineToPoint:endP];
    [path closePath];
    lineLayer.path = path.CGPath;
}

- (void)updateStatusView:(CGPoint)location{
    self.mainVC.statusView.labelCoord.text = [NSString stringWithFormat:@"x: %.2f y: %.2f",location.x,location.y];
}


@end







