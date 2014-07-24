//
//  ViewController.m
//  test
//
//  Created by Joao Duarte on 24/07/2014.
//  Copyright (c) 2014 Joao Duarte. All rights reserved.
//

#import "ViewController.h"
#import "ViewTest.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
    ViewTest *viewtest = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] lastObject];
    [self.view addSubview:viewtest];
  
    viewtest.translatesAutoresizingMaskIntoConstraints = NO;
  
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:viewtest attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:viewtest attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:viewtest attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:viewtest attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0f]];

}

@end
