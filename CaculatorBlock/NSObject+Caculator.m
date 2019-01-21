//
//  NSObject+Caculator.m
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (float)makeCaculators:(void (^)(CaculatorMaker * make))block {
    CaculatorMaker *make = [[CaculatorMaker alloc] init];
    block(make);
    return make.result;
}

@end
