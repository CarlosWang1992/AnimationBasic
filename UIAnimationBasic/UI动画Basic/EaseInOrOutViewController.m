//
//  EaseInOrOutViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "EaseInOrOutViewController.h"

@interface EaseInOrOutViewController ()
@property (weak, nonatomic) IBOutlet UIView *deepBlueSqure;
@property (weak, nonatomic) IBOutlet UIView *yellowSqure;

@end

@implementation EaseInOrOutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)spin{
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionCurveEaseOut|UIViewAnimationOptionCurveEaseIn| UIViewAnimationOptionAutoreverse|UIViewAnimationOptionRepeat  animations:^(){
        self.deepBlueSqure.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width-200, 0);
    }completion:^(BOOL fnished){
//        [self spin];
    }];
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionAutoreverse|UIViewAnimationOptionRepeat  animations:^(){
        self.yellowSqure.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width-200, 0);
    }completion:^(BOOL fnished){
//        [self spin];
    }];
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self spin];
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
