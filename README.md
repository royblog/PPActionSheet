# PPActionSheet
![](https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg)

<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg" width = 30% height = 30% align=“middle”/>

<div style="align: center">
<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg"/>
</div>

作者：世外大帝
链接：https://www.jianshu.com/p/d81733fe4170
來源：简书
简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。

# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    [ppActionSheet show];
```
