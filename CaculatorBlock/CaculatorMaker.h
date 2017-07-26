//
//  CaculatorMaker.h
//  CaculatorBlock
//
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 链式编程思想：是将多个操作（多行代码）通过点号(.)链接在一起成为一句代码,使代码可读性好。a(1).b(2).c(3)
 
 链式编程特点：方法的返回值是block,block必须有返回值（本身对象），block参数（需要操作的值）
 
 代表：masonry框架。
 */

@interface CaculatorMaker : NSObject


@property (nonatomic, assign)float result;

- (CaculatorMaker *(^)(float))add;
- (CaculatorMaker *(^)(float))sub;
- (CaculatorMaker *(^)(float))muilt;
- (CaculatorMaker *(^)(float))divide;


@end
