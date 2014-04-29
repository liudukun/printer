//
//  DKToolsView.m
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import "DKToolsView.h"

@implementation DKToolsView

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
    UIButton * pencil = [UIButton buttonWithType:UIButtonTypeCustom];
    [pencil setTitle:@"铅笔" forState:UIControlStateNormal];
    pencil.layer.borderWidth = 1.0;
    pencil.layer.cornerRadius = 4.0;
    pencil.layer.borderColor = [UIColor cyanColor].CGColor;
    pencil.frame = CGRectMake(10, 10, 46, 46);
    [pencil addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
    pencil.tag = 1;
    [self addSubview:pencil];
    
    
}

-(void)setNeedsDisplay{
    [super setNeedsDisplay];

}

- (void)actionBtn:(UIButton*)btn{
    
}

@end
