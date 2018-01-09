//
//  ChieryBusiness1.m
//  ChieryBusiness1
//
//  Created by chiery on 2018/1/8.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "ChieryBusiness1.h"
#import "ChieryCommonKit.h"
#import "CHieryJumpHandle.h"

@interface ChieryBusiness1 () <ChieryJumpHandleResponsePrt>
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;
@end

@implementation ChieryBusiness1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.with.height.equalTo(@100);
    }];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.label.mas_right).offset(20);
        make.top.width.height.equalTo(@100);
    }];
}

- (void)fetchData {
    [ChieryJumpHandle jumpHandleOpenURL:[NSURL URLWithString:@"chieryiphone://business2/fetchData?q=2"] withUrlData:@{@"key":@"2"} responseDelg:self userInfo:nil];
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.text = @"business1";
        _label.font = [UIFont systemFontOfSize:20];
        _label.backgroundColor = [UIColor redColor];
        _label.textColor = [UIColor whiteColor];
    }
    return _label;
}

- (UIButton *)button {
    if (!_button) {
        _button = [UIButton new];
        _button.backgroundColor = [UIColor blueColor];
        [_button setTitle:@"调用数据" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(fetchData) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

#pragma mark - Delegate
- (void)jumpHandleResponseData:(NSDictionary *)responseData withOpenURL:(NSURL *)url urlData:(NSDictionary *)urlData userInfo:(id)userInfo {
    NSLog(@"响应代理的方法");
    NSLog(@"%@",responseData);
}

@end
