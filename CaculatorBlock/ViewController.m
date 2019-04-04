//
//  ViewController.m
//  CaculatorBlock
//  Created by shuanghui xu on 2017/7/26.
//  Copyright © 2017年 shuanghui xu. All rights reserved.
//44

#import "ViewController.h"
#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"
#import "Caculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //链式编程思想，
    float result = [NSObject makeCaculators:^(CaculatorMaker *make) {
        make.add(1).add(2).divide(2);
    }];
    NSLog(@"result = %f",result);
    
    //函数式编程思想
    Caculator * c = [[Caculator alloc] init];
    BOOL isqule = [[[c caculator:^int(int result) {
        result += 2;
        result *= 5;
        return result;
    }] equle:^BOOL(int result) {
        return result == 10;
    }] isEqule];
    NSLog(@"%d",isqule);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
