//
//  blockData.h
//  BlockTestByValueAndCall-back
//
//  Created by 出神入化 on 15/8/15.
//  Copyright (c) 2015年 出神入化. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BlockData)(NSString *string);
@interface BlockDataHandle : NSObject
@property (nonatomic, copy) BlockData blockData;
//set方法
-(void)setBlockData:(BlockData)blockData;
//传入参数NSString 
- (void)getData:(NSString *)string block:(BlockData)block;
@end
