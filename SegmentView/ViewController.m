//
//  ViewController.m
//  SegmentView
//
//  Created by 张金山 on 2018/2/11.
//  Copyright © 2018年 张金山. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

#import "TopButtonView.h"

#define SegMentViewHeight 50
@interface ViewController ()

@property (nonatomic,strong) TopButtonView *topButtonView;
@property (nonatomic,strong) NSArray *itemArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    self.navigationItem.title = @"SegmentView";
    self.itemArray = @[@"第一页",@"第二页"];
    [self.view addSubview:self.topButtonView];
}

- (TopButtonView *)topButtonView{
    if(!_topButtonView){
        _topButtonView = [[TopButtonView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, SegMentViewHeight) withTitleArray:self.itemArray];
        _topButtonView.selectTitleColor = [UIColor orangeColor];
        _topButtonView.titleColor = [UIColor darkGrayColor];
        _topButtonView.showBottomLine = YES;
        @weakify(self);
        [_topButtonView.clickSubject subscribeNext:^(id x) {
            @strongify(self);
            //点击事件
            
        }];
    }
    return _topButtonView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
