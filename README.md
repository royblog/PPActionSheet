# PPActionSheet
![](https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg)

<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg" width = 30% height = 30% div align=right/>

<div align=center>[](https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1530811767550&di=24f87098886a62e3051ddcdc590c3925&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F0d338744ebf81a4c596ce13adb2a6059242da6e2.jpg)


# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    [ppActionSheet show];
```
