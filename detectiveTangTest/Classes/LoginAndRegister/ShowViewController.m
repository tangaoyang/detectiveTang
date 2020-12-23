//
//  ShowViewController.m
//  detectiveTangTest
//
//  Created by Cinderella on 2020/12/23.
//

#import "ShowViewController.h"
#import "LoginViewController.h"

@interface ShowViewController ()

@end

@implementation ShowViewController

- (void)viewDidLoad {
    
    UILabel *label1 = [[UILabel alloc] init];
    [self.view addSubview:label1];
    label1.text = @"小唐探案";
    label1.textColor = [UIColor whiteColor];
    label1.frame = CGRectMake(0, 150, 414, 40);
    label1.textAlignment = NSTextAlignmentCenter;
    label1.font = [UIFont systemFontOfSize:38];
    
    UILabel *label2 = [[UILabel alloc] init];
    [self.view addSubview:label2];
    label2.text = @"TangAoyang's Case";
    label2.numberOfLines = 0;
    label2.font = [UIFont systemFontOfSize:20];
    label2.textColor = [UIColor whiteColor];
    label2.frame = CGRectMake(0, 210, [UIScreen mainScreen].bounds.size.width, 30);
    label2.textAlignment = NSTextAlignmentCenter;
    
    UIImage *zyyImage = [UIImage imageNamed:@"zyy.jpg"];
    UIImageView *zyyImageView = [[UIImageView alloc] initWithImage:zyyImage];
    zyyImageView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 3, [UIScreen mainScreen].bounds.size.width, 280);
    [self.view addSubview:zyyImageView];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self performSelector:@selector(next) withObject:self afterDelay:1];
}

- (void)next {
    LoginViewController *root = [[LoginViewController alloc] init];
    self.view.window.rootViewController = root;
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
