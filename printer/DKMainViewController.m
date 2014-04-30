//
//  DKMainViewController.m
//  printer
//
//  Created by imac_ldk on 14-4-29.
//  Copyright (c) 2014年 ldk. All rights reserved.
//

#import "DKMainViewController.h"

@interface DKMainViewController ()

@end

@implementation DKMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.printView = [[DKPrintView alloc]initWithFrame:CGRectMake(66, 66, 1024-66, 768-66-20)];
    self.printView.backgroundColor = [UIColor cyanColor];
    self.printView.contentMode = UIViewContentModeRedraw;  
    [self.view addSubview:self.printView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
