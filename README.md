# SegmentView
一个自定义的好用的SegmentView工具类，封装好，方便使用

可以通过设置这些属性来完成不同的需求
//字体
@property (nonatomic, strong) UIFont *font;
//默认的字体颜色
@property (nonatomic, strong) UIColor *titleColor;
//选中的字体颜色
@property (nonatomic, strong) UIColor *selectTitleColor;
//存放标题的数组
@property (nonatomic, strong) NSArray *titleArray;
//默认选中的下标
@property (nonatomic, assign) NSInteger selectIndex;
//是否显示底部的横线
@property (nonatomic, assign) BOOL showBottomLine;
//按钮的背景颜色
@property (nonatomic, strong) UIColor *buttonBackgroundColor;
