//
//  SpringViewController.m
//  UI动画Basic
//
//  Created by student on 15/11/22.
//  Copyright © 2015年 CarlosWang. All rights reserved.
//

#import "SpringViewController.h"

@interface SpringViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueSqure1;
@property (weak, nonatomic) IBOutlet UIView *yellowSqure1;
@property (weak, nonatomic) IBOutlet UIView *blueSqure2;
@property (weak, nonatomic) IBOutlet UIView *yellowSqure2;

@end

@implementation SpringViewController

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
    [UIView animateWithDuration:3.5 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:0 options:nil animations:^(){
        self.blueSqure1.transform=CGAffineTransformMakeTranslation(self.view.frame.size.width-100, 0);
    }completion:nil];
}
/*
 
 damping  阻尼c   F = -cv
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
