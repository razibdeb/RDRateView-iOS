//
//  ViewController.m
//  RDRateView
//
//  Created by Razib Chandra Deb on 12/3/15.
//  Copyright © 2015 Razib Chandra Deb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)rateChanged:(int)newRate
{
    NSLog(@"rate changed");
}
@end
