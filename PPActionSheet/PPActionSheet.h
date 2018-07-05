//
//  PPActionSheet.h
//  
//
//  Created by 王耀国 on 2018/6/28.
//  Copyright © 2018年 王耀国. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SelectedIndex)(NSInteger index);

@interface PPActionSheet : UIView

@property (nonatomic, copy) SelectedIndex selectedIndex;


/**
 title array
 */
@property (nonatomic, strong) NSArray *titles;

/**
 item space array
 */
@property (nonatomic, strong) NSArray *itemsSpace;

/**
 item color array
 */
@property (nonatomic, strong) NSArray *itemsColor;

/**
 item text color array
 */
@property (nonatomic, strong) NSArray *itemsTextColor;

/**
 mask view background color, by default black, alpha 0.4
 */
@property (nonatomic, strong) UIColor *maskColor;

/**
 view background color, by default grey color
 */
@property (nonatomic, strong) UIColor *viewColor;

/**
 item color, by default white color
 */
@property (nonatomic, strong) UIColor *itemColor;

/**
 item text collor, by default black color
 */
@property (nonatomic, strong) UIColor *itemTextColor;

/**
 mask alpha, by default 0.4
 */
@property (nonatomic, assign) float maskAlpha;

/**
 view alpha, by default 0.9
 */
@property (nonatomic, assign) float viewAlpha;

/**
 animation druation, by default 0.3
 */
@property (nonatomic, assign) float animationDuration;

/**
 item height, by default 55
 */
@property (nonatomic, assign) float itemHeight;

/**
 item space is equal, by default 0.3
 */
@property (nonatomic, assign) float itemSpace;


/**
 create PPActionSheet
 */
-(instancetype)initWithTitles:(NSArray *)titles withSelectIndex:(SelectedIndex)index;


/**
 show view
 */
-(void)show;


/**
 clean view
 */
-(void)dismiss;

@end
