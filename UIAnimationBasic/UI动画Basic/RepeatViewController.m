//
//  RepeatViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "RepeatViewController.h"

@interface RepeatViewController ()
@property (weak, nonatomic) IBOutlet UIView *DeepBlueSqure;
@property (weak, nonatomic) IBOutlet UIView *YellowSqure;

@end

@implementation RepeatViewController

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
    [UIView animateWithDuration:1.0 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse animations:^(){
        self.DeepBlueSqure.transform = CGAffineTransformMakeTranslation(self.view.frame.size.width-self.DeepBlueSqure.frame.size.width, 0);
    }completion:nil];
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat animations:^(){
        self.YellowSqure.transform=CGAffineTransformMakeTranslation(self.view.frame.size.width-self.YellowSqure.frame.size.width, 0);
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
