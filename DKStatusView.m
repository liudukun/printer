//
//  DKStatusView.m
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import "DKStatusView.h"

@implementation DKStatusView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */


-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.labelCoord = [[UILabel alloc]initWithFrame:CGRectMake(-1, -2, 150, 30)];
    self.labelCoord.text = @"x: 100 y: 100";
    self.labelCoord.textAlignment = NSTextAlignmentCenter;
    self.labelCoord.layer.borderWidth = 1.0 ;
    self.labelCoord.font = [UIFont systemFontOfSize:13.0];
    [self addSubview:self.labelCoord];

    self.labelColor = [[UILabel alloc]initWithFrame:CGRectMake(150 + 76 +27 , -2, 60, 30)];
    self.labelColor.textAlignment = NSTextAlignmentCenter;
    self.labelColor.backgroundColor = [UIColor redColor];
    [self addSubview:self.labelColor];

    
    UILabel * yanse = [[UILabel alloc]initWithFrame:CGRectMake(150 +30 , -2, 200, 30)];
    yanse.text = @"当前颜色:";
    yanse.font = [UIFont systemFontOfSize:13.0];
    [self addSubview:yanse];


    
}





@end
