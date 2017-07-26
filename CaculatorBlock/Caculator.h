//
//  Caculator.h
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 函数式编程思想：是把操作尽量写成一系列嵌套的函数或者方法调用。
 
 函数式编程特点：每个方法必须有返回值（本身对象）,把函数或者Block当做参数,block参数（需要操作的值）block返回值（操作结果）
 
 代表：ReactiveCocoa。
 */

@interface Caculator : NSObject

@property (nonatomic, assign)BOOL isEqule;
@property (nonatomic, assign)int result;

- (Caculator *)caculator:(int(^)(int result))caculator;

- (Caculator *)equle:(BOOL(^)(int result))operation;

@end
