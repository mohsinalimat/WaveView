//
//  WaveViewController.m
//  WaveViewDemo
//
//  Created by Darwin on 2017/4/7.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "WaveViewController.h"
#import "Wave.h"

@interface WaveViewController ()

@property (weak, nonatomic) IBOutlet WaveView *waveView;

@property (weak, nonatomic) IBOutlet UIButton *changeColorBtn;

@end

@implementation WaveViewController
- (IBAction)backClick:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)showDoubleWave:(id)sender {
    
    self.waveView.isDouble = !self.waveView.isDouble;
    
}
- (IBAction)changeWaveAmplitude:(id)sender {
    
    self.waveView.waveAmplitude += 10;
    
    if(self.waveView.waveAmplitude >= 100) {
        self.waveView.waveAmplitude = 10;
    }
    
}

- (IBAction)changeColor:(id)sender {
    
    self.waveView.firsetWaveColor = [self getRandomColor];
    self.waveView.secondWaveColor = [self getRandomColor];
    
}

- (UIColor *)getRandomColor {
    
    int red = arc4random_uniform(256);
    int green = arc4random_uniform(256);
    int blue = arc4random_uniform(256);
    
    return [UIColor colorWithRed:red / 256.0 green:green / 256.0 blue:blue / 256.0 alpha:1];
    
}

- (IBAction)changeWaveType:(id)sender {
    
    self.waveView.waveViewType = (self.waveView.waveViewType + 1) % 4;
    
    switch (self.waveView.waveViewType) {
        case 0:
            NSLog(@"current type is : WaveViewTypeDefault");
            break;
        case 1:
            NSLog(@"current type is : WaveViewTypeBottom");
            break;
        case 2:
            NSLog(@"current type is : WaveViewTypeLeft");
            break;
        case 3:
            NSLog(@"current type is : WaveViewTypeRight");
            break;
        default:
            break;
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

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
