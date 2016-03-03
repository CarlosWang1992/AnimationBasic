//
//  RotationViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()
@property (weak, nonatomic) IBOutlet UIView *redSqure;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)rotation{
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveLinear animations:^(){
        self.redSqure.transform = CGAffineTransformRotate(self.redSqure.transform, M_PI);
    }completion:^(BOOL finish){
        // 动作完成之后继续调用
        [self rotation];
    }];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self rotation];
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
