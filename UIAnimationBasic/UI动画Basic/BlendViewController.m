//
//  BlendViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "BlendViewController.h"

@interface BlendViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *light_001;
@property (weak, nonatomic) IBOutlet UIImageView *light_002;
@property (weak, nonatomic) IBOutlet UIImageView *light_003;
@property (weak, nonatomic) IBOutlet UIImageView *light_004;
@property (weak, nonatomic) IBOutlet UIImageView *spider;

@end

@implementation BlendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.light_001.transform=CGAffineTransformMakeScale(0, 0);
    self.light_002.transform=CGAffineTransformMakeScale(0, 0);
    self.light_003.transform=CGAffineTransformMakeScale(0, 0);
    self.light_004.transform=CGAffineTransformMakeScale(0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
//    [UIView animateWithDuration:0.3 animations:^(){
//        self.light_001.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_002.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_003.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_004.transform=CGAffineTransformMakeScale(1, 1);
//        
//        
//    }];
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:nil animations:^(){
        self.light_001.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_002.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_003.transform=CGAffineTransformMakeScale(1, 1);
        self.light_004.transform=CGAffineTransformMakeScale(1, 1);
    }completion:nil];
    [UIView animateWithDuration:0.5 delay:0.1 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:nil animations:^(){
//        self.light_001.transform=CGAffineTransformMakeScale(1, 1);
        self.light_002.transform=CGAffineTransformMakeScale(1, 1);
        self.light_003.transform=CGAffineTransformMakeScale(1, 1);
//        self.light_004.transform=CGAffineTransformMakeScale(1, 1);
    }completion:nil];
    [UIView animateWithDuration:3 delay:0.3 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:nil animations:^(){
        self.spider.transform = CGAffineTransformRotate(self.spider.transform, M_PI);
        self.spider.transform =CGAffineTransformMakeTranslation(0, self.view.frame.size.height/6);
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
