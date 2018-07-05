# PPActionSheet
自定义 ActionSheet 样式 
[](https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg)

# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    ppActionSheet.itemsSpace = @[@"0", @"0.3", @"0.3", @"5"];
    [ppActionSheet show];
```
