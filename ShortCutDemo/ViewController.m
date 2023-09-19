//
//  ViewController.m
//  ShortCutDemo
//
//  Created by 崔先生的MacBook Pro on 2023/9/19.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(200, 300, 100, 100)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    self.title = @"FirstVC";
}

- (void)pushVC {
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:NO];
}


@end
