//
//  DKMainViewController.h
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKStatusView.h"
#import "DKToolsView.h"
#import "DKPrintView.h"
#import "DKFunctionsView.h"

@interface DKMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet DKToolsView *toolsView;
@property (weak, nonatomic) IBOutlet DKStatusView *statusView;
@property (weak, nonatomic) IBOutlet DKFunctionsView *functionView;
@property (strong, nonatomic)  DKPrintView *printView;

@end
