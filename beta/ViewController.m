//
//  ViewController.m
//  beta
//
//  Created by Martin Stoyanov on 4/17/15.
//  Copyright (c) 2015 Emailio. All rights reserved.
//

#import "ViewController.h"
#import "ELRemoteLogger.h"

@interface ViewController ()

- (IBAction)log:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [ELRemoteLogger setupLogger];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)log:(id)sender {
    NSLog(@"logged");
    [ELRemoteLogger log:@"Button tapped"];
}

@end
