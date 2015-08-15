//
//  blockData.m
//  BlockTestByValueAndCall-back
//
//  Created by 出神入化 on 15/8/15.
//  Copyright (c) 2015年 出神入化. All rights reserved.
//

#import "BlockDataHandle.h"

@implementation BlockDataHandle
-(void)setBlockData:(BlockData)blockData
{
    _blockData = blockData;
}


- (void)getData:(NSString *)string block:(BlockData)block
{
        NSString *str = [NSString stringWithFormat:@"ASDFGH%@", string];
    //调用block
     block(str);
}
@end
