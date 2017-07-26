//
//  CaculatorMaker.m
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//

#import "CaculatorMaker.h"

@implementation CaculatorMaker


- (CaculatorMaker *(^)(float))add {
    return ^CaculatorMaker *(float value) {
        _result += value;
        return self;
    };
}

- (CaculatorMaker *(^)(float))sub {
    return ^CaculatorMaker *(float value) {
        _result -= value;
        return self;
    };
}

- (CaculatorMaker *(^)(float))muilt {
    return ^CaculatorMaker *(float value) {
        _result *= value;
        return self;
    };
}

- (CaculatorMaker *(^)(float))divide {
    return ^CaculatorMaker *(float value) {
        _result /= value;
        return self;
    };
}

@end
