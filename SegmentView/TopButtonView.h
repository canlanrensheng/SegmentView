//
//  TopButtomView.h
//  Zhuan
//
//  Created by txooo on 17/8/7.
//  Copyright © 2017年 张金山. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
typedef NS_ENUM(NSInteger,TopButtonClickState) {
    TopButtonClickStateLeft,
    TopButtonClickStateRight
};

@interface TopButtonView : UIView

- (instancetype)initWithFrame:(CGRect)frame withTitleArray:(NSArray *)titleArray;

@property (nonatomic, strong) UIFont *font;

@property (nonatomic, strong) UIColor *titleColor;

@property (nonatomic, strong) UIColor *selectTitleColor;

@property (nonatomic, strong) NSArray *titleArray;

@property (nonatomic, assign) NSInteger selectIndex;

@property (nonatomic, assign) BOOL showBottomLine;

@property (nonatomic, strong) UIColor *buttonBackgroundColor;

@property (nonatomic, strong) UIColor *tintColor;

@property (nonatomic, strong) RACSubject *clickSubject;

//定位到某一个按钮的下表
@property (nonatomic,assign) NSInteger loacadIndex;

@end
