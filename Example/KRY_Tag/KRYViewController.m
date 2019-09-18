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

static CGSize textDefaultSize(NSString *text, CGFloat textSize) {
    
    return [text boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 10) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:textSize]} context:nil].size;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *parentView = [[UIView alloc] initWithFrame:CGRectMake(200, 100, 300, 400)];
//    KRYStringStaticTag *tag1 = [[KRYStringStaticTag alloc] initWithText:@"你好呀" textSize:17.0];
//    tag1.fillColor = [UIColor greenColor];
//    tag1.cornerRadius = 20;
    KRYStringStaticTag *tag1 = [KRYTagCreator createLabelTagWithText:@"你好的我发挥文化" sizeType:SMALL];
    
    CGSize size = textDefaultSize(@"你好的我发挥文化", 16);
    tag1.fillColor = [UIColor yellowColor];
    tag1.strokeColor = [UIColor redColor];

    [parentView addSubview:tag1];
    [self.view addSubview:parentView];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        tag1.text = @"你";
        tag1.width = 40;
        tag1.height = 50;
        
        
    });
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
