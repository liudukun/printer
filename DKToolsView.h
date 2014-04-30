//
//  DKToolsView.h
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKMainViewController.h"
#import "DKPrintView.h"

@class DKMainViewController;

@interface DKToolsView : UIView

@property (nonatomic) int seletedIndex;

@property (nonatomic,strong) NSMutableArray * tools;

@property (nonatomic,strong) DKMainViewController *mainVC;

@end
