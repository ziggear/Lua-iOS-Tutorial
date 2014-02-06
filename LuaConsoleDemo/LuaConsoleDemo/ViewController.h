//
//  ViewController.h
//  LuaConsoleDemo
//
//  Created by ziggear on 14-1-30.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LuaProxy.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property LuaProxy *lproxy;
@end
