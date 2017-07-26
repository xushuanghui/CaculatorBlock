//
//  NSObject+Caculator.h
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CaculatorMaker;
@interface NSObject (Caculator)

+ (float)makeCaculators:(void (^)(CaculatorMaker * make))block;

@end
