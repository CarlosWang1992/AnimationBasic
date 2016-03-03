//
//  OpacityViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "OpacityViewController.h"

@interface OpacityViewController ()
@property (weak, nonatomic) IBOutlet UIView *purpleSqure;

@end

@implementation OpacityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];// 重写方法必须 先重载父类方法
    
    [UIView animateWithDuration:1.0 animations:^(){
        self.purpleSqure.transform = CGAffineTransformMakeScale(2.0, 2.0);
        // 改变透明度
        self.purpleSqure.alpha = 0;
        // 改变背景色
        self.purpleSqure.backgroundColor = [UIColor blackColor];
    }];
    
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
