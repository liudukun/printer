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
    NSMutableArray * points;
}
@end

@implementation DKPrintView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        points = [NSMutableArray array];
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    if (points.count>0) {
        CGPoint myStartPoint=[points[0] CGPointValue];
        CGContextMoveToPoint(ctx, myStartPoint.x, myStartPoint.y);
        for (int i =0; i<points.count-1;i++) {
            NSValue * valueEnd = points[i+1];
            CGPoint endP = [valueEnd CGPointValue];
            CGContextAddLineToPoint(ctx, endP.x, endP.y);
        }
        CGContextSetFillColorWithColor(ctx, [[UIColor blueColor] CGColor]);
        CGContextSetLineWidth(ctx, 1.0f);
        CGContextStrokePath(ctx);
    }
}

-(void)setNeedsDisplay{
    [super setNeedsDisplay];
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    points = [NSMutableArray array];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    NSValue *value = [NSValue valueWithCGPoint:location];
    [points  addObject:value];
    [self setNeedsDisplay];
    self.mainVC.statusView.labelCoord.text = [NSString stringWithFormat:@"x: %.2f y: %.2f",location.x,location.y];
}



- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    NSValue *value = [NSValue valueWithCGPoint:location];
    [points addObject:value];
    [self setNeedsDisplay];
    self.mainVC.statusView.labelCoord.text = [NSString stringWithFormat:@"x: %.2f y: %.2f",location.x,location.y];
    
}



@end







