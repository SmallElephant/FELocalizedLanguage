//
//  DetialViewController.m
//  FELocalizedLanaguage
//
//  Created by FlyElephant on 16/5/23.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "DetialViewController.h"
#import "AppDelegate.h"

@interface DetialViewController ()

@end

@implementation DetialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)changeToChinese:(UIButton *)sender {
//    [[NSUserDefaults standardUserDefaults] setObject:@[@"zh-Hans"] forKey:@"AppleLanguages"];
    NSString *code;
    if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"][0] isEqual:@"en"]) {
        code=@"zh-Hans";
    }else{
        code=@"en";
    }
    [[NSUserDefaults standardUserDefaults] setObject:@[code] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate reloadRootContoller:code];

//    [self dismissViewControllerAnimated:YES completion:^{
//        
//    }];
}

@end
