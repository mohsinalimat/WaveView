//
//  WaveProgressController.m
//  WaveViewDemo
//
//  Created by Darwin on 2017/4/7.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "WaveProgressController.h"
#import "Wave.h"

@interface WaveProgressController ()

@property (weak, nonatomic) IBOutlet UIView *showView;

@property (nonatomic, strong) WaveProgressView *progress;



@end

@implementation WaveProgressController
- (IBAction)sliderChange:(UISlider *)sender {
    
    
    self.progress.percent = [sender value] / 100.0;
    
}

- (IBAction)addPercentClick:(id)sender {
    
    self.progress.percent += 0.1;
    
}
- (IBAction)minusPercentClick:(id)sender {
    
    self.progress.percent -= 0.1;
}
- (IBAction)changeTypeClick:(id)sender {
    
    self.progress.isCircle = !self.progress.isCircle;
    
}
- (IBAction)showPercentClick:(id)sender {
    
    self.progress.showPercent = !self.progress.showPercent;
    
}
- (IBAction)singleWaveClick:(id)sender {
    
    self.progress.isDouble = !self.progress.isDouble;
    
}
- (IBAction)backClick:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    WaveProgressView *progress = [[WaveProgressView alloc] initWithFrame:self.showView.bounds];
    [self.showView addSubview:progress];
    self.progress = progress;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
