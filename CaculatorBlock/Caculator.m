//
//  Caculator.m
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//99

#import "Caculator.h"

@implementation Caculator


- (Caculator *)caculator:(int(^)(int result))caculator {
    _result = caculator(_result);
    return self;
}

- (Caculator *)equle:(BOOL(^)(int result))operation {
    _isEqule = operation(_result);
    return self;
}

@end
