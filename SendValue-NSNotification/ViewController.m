//
//  ViewController.m
//  SendValue-NSNotification
//
//  Created by 黄海燕 on 15/11/8.
//  Copyright © 2015年 Haiyan Huang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    
    __weak IBOutlet UILabel *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ChangeNameNotification:) name:@"ChangeNameNotification" object:nil];
//    参数介绍:addObserver:　观察者，即在什么地方接收通知;
//    　       selector:　收到通知后调用何种方法;
//    　       name：　通知的名字，也是通知的唯一标示，编译器就通过这个找到通知的。
//    发送通知:调用观察者处的方法。
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"mytest"　object:searchFriendArray];
//    参数：
//    postNotificationName：通知的名字，也是通知的唯一标示，编译器就通过这个找到通知的。
//    object：传递的参数
    
    
}

-(void)ChangeNameNotification:(NSNotification *)notification
{
    NSDictionary *dictionary = [notification userInfo];
    _label.text = [dictionary objectForKey:@"name"];

}
- (IBAction)pushNext:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

//当我们不使用时，要记得删掉通知：
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
