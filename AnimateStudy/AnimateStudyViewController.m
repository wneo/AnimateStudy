//
//  AnimateStudyViewController.m
//  AnimateStudy
//
//  Created by neo on 13-9-2.
//  Copyright (c) 2013年 MOA. All rights reserved.
//

#import "AnimateStudyViewController.h"

@interface AnimateStudyViewController ()

@end

@implementation AnimateStudyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIImage *xcodeImage = [UIImage imageNamed:@"xcode.png"];
	self.xcodeImageView = [[UIImageView alloc] initWithImage:xcodeImage];
	[self.xcodeImageView setFrame:CGRectMake(0, 0, 100.0f, 100.0f)];
	[self.view addSubview:self.xcodeImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	[self.xcodeImageView setFrame:CGRectMake(0, 0, 100.0f, 100.0f)];
	[UIView beginAnimations:@"xcodeImageViewAnimation" context:(__bridge void*)self.xcodeImageView];
	//[UIView setAnimationCurve:UIViewAnimationCurveLinear];
	[UIView setAnimationDuration:5.0f];
	[self.xcodeImageView setFrame:CGRectMake(200.0f, 350.0f, 100.0f, 100.0f)];
	[self.xcodeImageView setAlpha:0.0f];
	self.xcodeImageView.transform = CGAffineTransformMakeRotation((90.0f * M_PI) / 180.0f);
	[UIView commitAnimations];
	NSLog(@"Down.");
}

@end
