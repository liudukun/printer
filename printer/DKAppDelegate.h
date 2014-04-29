//
//  DKAppDelegate.h
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKMainViewController.h"

@interface DKAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong) DKMainViewController * controller;

@end
