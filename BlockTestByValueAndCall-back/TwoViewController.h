//
//  TwoViewController.h
//  BlockTestByValueAndCall-back
//
//  Created by 出神入化 on 15/8/15.
//  Copyright (c) 2015年 出神入化. All rights reserved.
//

#import <UIKit/UIKit.h>
//重新定义block类名 void返回值类型 BlockValue类名(重命名类名) NSString *stringValue参数
typedef void(^BlockValue)(NSString *stringValue);
@interface TwoViewController : UIViewController
//block属性  此处要用copy修饰
@property (nonatomic, copy) BlockValue blockValue;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (void)getValue:(BlockValue)aBlock;
@end
