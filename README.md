# PPActionSheet
![](https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg)

<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg" width = 60% height = 60% align=“middle”/>

<div style="align: center">
<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg"/>
</div>

<div style="align: center">
<img src="http://upload-images.jianshu.io/upload_images/2182065-91ff11ffeb37cff2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"/>
</div>


# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    [ppActionSheet show];
```
