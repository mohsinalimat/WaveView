# WaveView
create wave view and wave progress view quickly and simple.

Now Supports Cocoapods.

use cocoapods import the framework.

```
pod 'WaveView', '~> 0.1.2'
``` 

import `wave.h` file

```
#import <wave.h>
```

then you can create `WaveView` and `WaveProgressView` Easily. Test code:

```
WaveView *wave = [[WaveView alloc] initWithFrame:self.view.bounds];
[self.view addSubView:wave];

WaveProgressView *progress = [[WaveProgressView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
progress.percent = 0.5;
[self.view addSubView:progress];
```

[Detail Information](http://www.jianshu.com/p/e982c874ce93)

![WaveView](https://github.com/skting/WaveView/blob/master/waveView.gif)

![WaveProgressView效果](https://github.com/skting/WaveView/blob/master/waveProgressView.gif)