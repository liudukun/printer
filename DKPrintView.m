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
    int countMove;
    NSMutableArray * pointss;
    NSMutableArray * points;
    
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
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor blueColor] CGColor]);
    CGContextSetLineWidth(ctx, 1.0f);
    for (int index =0; index<pointss.count;index++) {
        NSArray * pointsIndex = pointss[index];
        if (pointsIndex.count>2) {
            for (int i =0 ;i< pointsIndex.count-1;i++) {
                NSValue * valueBegin = pointsIndex[i];
                NSValue * valueEnd = pointsIndex[i+1];
                CGPoint beginP = [valueBegin CGPointValue];
                CGPoint endP = [valueEnd CGPointValue];
                CGContextMoveToPoint(ctx, beginP.x, beginP.y);
                CGContextAddLineToPoint(ctx, endP.x, endP.y);
                CGContextStrokePath(ctx);
            }
        }
    }
    
}

-(void)setNeedsDisplay{
    if (points == nil) {
        pointss = [NSMutableArray array];
    }
    [super setNeedsDisplay];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    points = [NSMutableArray array];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    NSValue *value = [NSValue valueWithCGPoint:location];
    [points  addObject:value];
    [self setNeedsDisplay];
}



- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    NSValue *value = [NSValue valueWithCGPoint:location];
    [points  addObject:value];
    [pointss addObject:points];
    [self setNeedsDisplay];
}



@end







