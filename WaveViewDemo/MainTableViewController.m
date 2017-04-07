//
//  MainTableViewController.m
//  WaveViewDemo
//
//  Created by Darwin on 2017/4/7.
//  Copyright © 2017年 Darwin. All rights reserved.
//

#import "MainTableViewController.h"
#import "WaveViewController.h"
#import "WaveProgressController.h"

@interface MainTableViewController ()

@property (nonatomic, strong) WaveViewController *vc1;

@property (nonatomic, strong) WaveProgressController *vc2;

@end

@implementation MainTableViewController

- (WaveViewController *)vc1 {
    if(_vc1 == nil) {
        _vc1 = [[WaveViewController alloc] initWithNibName:@"WaveViewController" bundle:nil];
    }
    return _vc1;
}

- (WaveProgressController *)vc2 {
    if(_vc2 == nil) {
        _vc2 = [[WaveProgressController alloc] initWithNibName:@"WaveProgressController" bundle:nil];
    }
    return _vc2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 80;
    
    self.tableView.tableFooterView = [UIView new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    // Configure the cell...
    
    switch (indexPath.row) {
        case 0:
            // 使用xib 展示该项
            cell.textLabel.text = @"Different Wave View";
            break;
        case 1:
            cell.textLabel.text = @"Progress Wave View";
            break;
        default:
            break;
    }
    
    
    
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
            
            [self presentViewController:self.vc1 animated:YES completion:nil];
            
            break;
        case 1:
            
            [self presentViewController:self.vc2 animated:YES completion:nil];
            
            break;
        default:
            break;
    }}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
