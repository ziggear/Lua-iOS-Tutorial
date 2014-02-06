//
//  ViewController.m
//  LuaConsoleDemo
//
//  Created by ziggear on 14-1-30.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize lproxy;
- (void)viewDidLoad
{
    [super viewDidLoad];
    lproxy = [[LuaProxy alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
