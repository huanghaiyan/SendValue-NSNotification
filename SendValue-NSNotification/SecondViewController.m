//
//  SecondViewController.m
//  SendValue-NSNotification
//
//  Created by 黄海燕 on 15/11/8.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    
    __weak IBOutlet UITextField *_textField;
    
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)back:(id)sender {
    [[NSNotificationCenter defaultCenter]     postNotificationName:@"ChangeNameNotification" object:self userInfo:@{@"name":_textField.text}];
    [self.navigationController popViewControllerAnimated:YES];
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
