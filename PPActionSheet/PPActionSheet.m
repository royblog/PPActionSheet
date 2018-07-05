//
//  PPActionSheet.m
//  
//
//  Created by 王耀国 on 2018/6/28.
//  Copyright © 2018年 王耀国. All rights reserved.
//

#import "PPActionSheet.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

@interface PPActionSheet()

@property (nonatomic, strong) UIView *actionSheetView;

@end

@implementation PPActionSheet

-(instancetype)initWithTitles:(NSArray *)titles withSelectIndex:(SelectedIndex)index {
    if([super initWithFrame:[UIScreen mainScreen].bounds]) {
        _selectedIndex = index;
        _titles = titles;
        _maskColor = [UIColor blackColor];
        _viewColor = [UIColor grayColor];
        _itemColor = [UIColor whiteColor];
        _itemTextColor = [UIColor blackColor];
        _animationDuration = 0.3;
        _itemHeight = 55;
        _itemSpace = 0.3;
        _maskAlpha = 0.4;
        _viewAlpha = 0.9;
    }
    return self;
}

-(void)setupUI {
    CATransition *fadeAnimation = [CATransition animation];
    fadeAnimation.duration = _animationDuration;
    fadeAnimation.type = kCATransitionReveal;
    [self.layer addAnimation:fadeAnimation forKey:nil];
    self.backgroundColor = [_maskColor colorWithAlphaComponent:_maskAlpha];
    
    _actionSheetView = [[UIView alloc] init];
    float viewHeight = [self viewHeight];
    if (kIsiPhoneX) {
        _actionSheetView.frame = CGRectMake(0, kScreenHeight - viewHeight - 34, kScreenWidth, viewHeight);
    } else {
        _actionSheetView.frame = CGRectMake(0, kScreenHeight - viewHeight, kScreenWidth, viewHeight);
    }
    _actionSheetView.backgroundColor = _viewColor;
    _actionSheetView.alpha = _viewAlpha;
    CATransition *showAnimation = [CATransition animation];
    showAnimation.duration = _animationDuration;
    showAnimation.type = kCATransitionMoveIn;
    showAnimation.subtype = kCATransitionFromTop;
    [_actionSheetView.layer addAnimation:showAnimation forKey:nil];
    
    [self addSubview:_actionSheetView];
    
    for (int i = 0; i < _titles.count; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:_titles[i] forState:UIControlStateNormal];
        [button setBackgroundColor:_itemsColor ? _itemsColor[i] : _itemColor];
        [button setTitleColor:_itemsTextColor ? _itemsTextColor[i] : _itemTextColor forState:UIControlStateNormal];
        button.frame = CGRectMake(0, [self topMarginHeight:i], kScreenWidth, _itemHeight);
        [button addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        [_actionSheetView addSubview:button];
    }
}

-(float)topMarginHeight:(int)index {
    float currentSpaceHeight = 0;
    if (_itemsSpace) {
        for (int i = 0; i <= index; i ++) {
            currentSpaceHeight += [_itemsSpace[i] floatValue];
        }
    } else {
        currentSpaceHeight *= index;
    }

    return currentSpaceHeight + _itemHeight * index;
}

-(float)viewHeight {
    float spaceHeight = 0;
    if (_itemsSpace) {
        for (int i = 0; i < _itemsSpace.count; i ++) {
            spaceHeight += [_itemsSpace[i] floatValue];
        }
        return _titles.count * _itemHeight + spaceHeight;
    } else {
        return _titles.count * _itemHeight + _itemSpace * (_titles.count - 1);
    }
}

-(void)itemClick:(UIButton *)sender {
    self.selectedIndex(sender.tag);
    [self dismiss];
}

-(void)show {
    [self setupUI];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self];
}

-(void)dismiss {
    [UIView animateWithDuration:_animationDuration animations:^{
        CGRect rect = self.actionSheetView.frame;
        rect.origin.y += rect.size.height;
        self.actionSheetView.frame = rect;
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismiss];
}

@end
