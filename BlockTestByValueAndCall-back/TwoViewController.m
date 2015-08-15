//
//  TwoViewController.m
//  BlockTestByValueAndCall-back
//
//  Created by 出神入化 on 15/8/15.
//  Copyright (c) 2015年 出神入化. All rights reserved.
//

#import "TwoViewController.h"
#import "BlockDataHandle.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view from its nib.
}

- (void)getValue:(BlockValue)aBlock
{
    self.blockValue = aBlock;
}

//回调button
- (IBAction)callback:(id)sender {
    BlockDataHandle *blockdataHandle = [[BlockDataHandle alloc] init];
    //回调blockdataHandle,传进去@"123",出来的string
    [blockdataHandle getData:@"123" block:^(NSString *string) {
        NSLog(@"打印回调之后的数据%@",string);
    }];
    
}
//返回按钮
- (IBAction)back:(id)sender {
    //判断是否执行setBlock方法,然后再执行里面的操作
    if (self.blockValue) {
        self.blockValue(_textField.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
