//
//  XCViewController.m
//  XCProgressHUD
//
//  Created by fanxiaocong on 04/25/2018.
//  Copyright (c) 2018 fanxiaocong. All rights reserved.
//

#import "XCViewController.h"
#import <XCProgressHUD/UIView+XCProgressHUD.h>


@interface XCViewController ()

@end

@implementation XCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)didClickButtonAction:(UIButton *)sender
{
    if (0 == sender.tag) {  // 加载
        [self.view showHUDWithText:@"正在发送..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.view showSuccess:@"操作成功..."];
        });
    } else if (1 == sender.tag) {   // 成功
        [self.view showSuccess:@"操作成功..."];
    } else if (2 == sender.tag) {   // 失败
        [self.view showError:@"加载失败..."];
    } else if (3 == sender.tag) {   // 警告
        [self.view showWarning:@"非法操作..."];
    } else if (4 == sender.tag) {   // 进度
        [self.view showProgressHUD:@"下载中..."];
        [self showProgressHUD:0];
    } else if (100 == sender.tag) { // 普通文本
        [self.view showText:@"这是文本提示"];
    }
}

- (void)showProgressHUD:(int)progress
{
    progress += 1;
    [self.view updateProgress:progress/100.0];
    
    if (progress == 100) {
        [self.view showSuccess:@"下载完成"];
    } else {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.02 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self showProgressHUD:progress];
        });
    }
}


@end
