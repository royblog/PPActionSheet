# PPActionSheet
![](https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg)

<img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg" width = 30% height = 30% align=“middle”/>

# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    [ppActionSheet show];
```
