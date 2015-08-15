//
//  ViewController.m
//  BlockTestByValueAndCall-back
//
//  Created by 出神入化 on 15/8/15.
//  Copyright (c) 2015年 出神入化. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _label.text = @"随便";
}
- (IBAction)next:(id)sender {
    //用blockSelf修饰blockSelf.label 避免block块内部_label被循环引用
    __weak ViewController *blockSelf = self;
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    //block返回值(跟代理写法挺类似的,就是语法不同,代理的话是此处是self.delegate=self;)
    [twoVC getValue:^(NSString *stringValue) {
        NSLog(@"打印block传的数值:%@",stringValue);
        blockSelf.label.text = stringValue;
    }];
    [self.navigationController pushViewController:twoVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
