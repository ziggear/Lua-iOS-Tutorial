//
//  LuaProxy.m
//  LuaConsoleDemo
//
//  Created by ziggear on 14-1-30.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import "LuaProxy.h"
#import "lua.h"
#import "lauxlib.h"
#import "lualib.h"

@interface LuaProxy()
@property lua_State *mainState;
@end

@implementation LuaProxy
@synthesize mainState;

- (id)init {
    self = [super init];
    if(self){
        // 创建Lua虚拟机lua_State
        mainState = luaL_newstate();
        if(!mainState) {
            return nil;
        }
        
        // 加载内置库
        luaL_openlibs(mainState);
       }
    return self;
}

- (int)loadString:(NSString *)stringToExecute {
    const char *str = [stringToExecute cStringUsingEncoding:NSUTF8StringEncoding];
    const int status = luaL_loadstring(mainState, str);
    lua_pcall(mainState,0,0,0);
    return status;
}

- (void)dealloc {
    lua_close(mainState);
}

@end
