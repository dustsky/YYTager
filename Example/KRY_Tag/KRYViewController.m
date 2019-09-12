//
//  KRYViewController.m
//  KRY_Tag
//
//  Created by dustsky on 09/12/2019.
//  Copyright (c) 2019 dustsky. All rights reserved.
//

#import "KRYViewController.h"
#import <KRYTag.h>

@interface KRYViewController ()

@end

@implementation KRYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    KRYStringStaticTag *tag1 = [[KRYStringStaticTag alloc] initWithText:@"你好呀" textSize:17.0];
    [self.view addSubview:tag1];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
