//
//  PositionViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController ()
@property (weak, nonatomic) IBOutlet UIView *greenSqure;
@property (weak, nonatomic) IBOutlet UIView *redSqure;
@property (weak, nonatomic) IBOutlet UIView *blueSqure;

@end

@implementation PositionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [UIView animateWithDuration:1.0 animations:^(){
        // 第一种方法 控制中兴点移动
//        [self.greenSqure setCenter:CGPointMake(self.view.frame.size.width-self.greenSqure.center.x, self.greenSqure.center.y)];
        // 第二种方法 添加变换事件
//    self.greenSqure.transform = CGAffineTransformTranslate(self.greenSqure.transform, self.view.frame.size.width-self.greenSqure.center.x, 0);
        self.greenSqure.transform =CGAffineTransformMakeTranslation(self.view.bounds.size.width-2*self.greenSqure.center.x, 0);
        self.redSqure.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height-2*self.redSqure.center.y);
        
//        [self.blueSqure setCenter:CGPointMake(self.view.frame.size.width-2*self.blueSqure.center.x, self.view.frame.size.height-2*self.blueSqure.center.y)];

    
    }];
    // 延迟执行
    [UIView animateWithDuration:1.0 delay:1.0 options: nil animations:^(){
        self.blueSqure.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width-self.blueSqure.center.x, self.view.frame.size.height-2*self.blueSqure.center.y);
        
    }completion:nil];
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
