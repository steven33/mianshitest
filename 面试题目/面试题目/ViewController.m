//
//  ViewController.m
//  面试题目
//
//  Created by lifangjian on 2017/12/20.
//  Copyright © 2017年 Meelive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self qudiaoxianglin];
    
    
}

//假设有一个字符串aabcad，请写一段程序，去掉字符串中不相邻的重复字符串，即上述字符串处理之后的输出结果为：aabcd
- (void)qudiaoxianglin{
    NSMutableString *str1 = [[NSMutableString alloc] initWithString:@"aabcad"];

    
    for (int i = 0; i < str1.length - 1; i++) {
        // 由于字符的特殊性  无法使用 字符串 isEqualToString 进行比较 只能转化为ASCII 值进行比较  所以 需要加 unsigined 修饰
        char a = [str1 characterAtIndex:i];
        for (int j = i + 1; j < str1.length; j++) {
            char b = [str1 characterAtIndex:j];
            if (a==b) {
                if (j-i>1) {
                    NSRange range = {j,1};
                    [str1 deleteCharactersInRange:range];
                }
            }
        }
    }
    
    NSLog(@"------ %@-------", str1);
}














@end
