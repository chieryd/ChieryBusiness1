//
//  ChieryBusiness1.m
//  ChieryBusiness1
//
//  Created by chiery on 2018/1/8.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "ChieryBusiness1.h"
#import "ChieryCommonKit.h"

@interface ChieryBusiness1 ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ChieryBusiness1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
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

@end
