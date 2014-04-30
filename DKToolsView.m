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


/*
    682
    66
 
 
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    self.tools = [NSMutableArray arrayWithArray:TOOLS];
    for (int i = 0 ; i<self.tools.count; i++) {
        UIButton * tool = [UIButton buttonWithType:UIButtonTypeCustom];
        [tool setTitle:self.tools[i] forState:UIControlStateNormal];
        tool.layer.borderWidth = 1.0;
        tool.layer.cornerRadius = 4.0;
        tool.layer.borderColor = [UIColor cyanColor].CGColor;
        tool.frame = CGRectMake(0, 0, 46, 46);
        tool.center = CGPointMake(33, 682 / (self.tools.count+1) * (i+1) );
        [tool addTarget:self action:@selector(actionBtn:) forControlEvents:UIControlEventTouchUpInside];
        tool.tag = 1000 + i;
        [self addSubview:tool];
    }

}


- (void)actionBtn:(UIButton*)btn{
    self.seletedIndex = (int)btn.tag;
    [self.mainVC.printView setNeedsDisplay];
}

@end
