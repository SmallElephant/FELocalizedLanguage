//
//  ViewController.m
//  FELocalizedLanaguage
//
//  Created by FlyElephant on 16/5/23.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "DetialViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *localizedLabel;


@property (weak, nonatomic) IBOutlet UIButton *changeBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.localizedLabel.text=NSLocalizedString(@"Hello", nil);
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSArray  *lan=[[NSUserDefaults standardUserDefaults] valueForKey:@"AppleLanguages"];
    NSLog(@"当前语言:%@",lan);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeLanaguage:(UIButton *)sender {
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
    
//    DetialViewController *detial=[self.storyboard instantiateViewControllerWithIdentifier:@"DetialViewController"];
//    [self presentViewController:detial animated:YES completion:^{
//        
//    }];
}

@end
