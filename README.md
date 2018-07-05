# PPActionSheet
<p align="center" >
  <img src="https://github.com/royblog/PPActionSheet/blob/master/Source/snapshoot.jpeg" alt="AFNetworking" title="AFNetworking">
</p>

# Usage
```
    PPActionSheet *ppActionSheet = [[PPActionSheet alloc] initWithTitles:@[@"拍照", @"从手机相册选择", @"保存到相册", @"取消"] withSelectIndex:^(NSInteger index) {
        NSLog(@"index:%ld",(long)index);
    }];
    [ppActionSheet show];
```
