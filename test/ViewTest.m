//
//  ViewTest.m
//  test
//
//  Created by Joao Duarte on 24/07/2014.
//  Copyright (c) 2014 Joao Duarte. All rights reserved.
//

#import "ViewTest.h"

@interface ViewTest ()

@property(nonatomic, weak) IBOutlet UILabel *firstLabel;

@end

@implementation ViewTest

- (void)layoutSubviews {
    [super layoutSubviews];

    [self performSelectorOnMainThread:@selector(adjustScrollContentSizeOnMainThread) withObject:nil    waitUntilDone:NO];
}

- (void)adjustScrollContentSizeOnMainThread
{
    self.firstLabel.preferredMaxLayoutWidth = self.firstLabel.bounds.size.width;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.firstLabel.text = @"For your added security, you will need to register your device before you can use the app. So to check that it is you, we’ll call you on a number you have previously registered with us.\n\nIf you have more than one number registered, you’ll be able to choose which number you wish to receive the call on.\n\nIf you haven’t registered a number, or you need to update your existing number(s), please log on to our desktop site and update them via the personal details section. For security purposes, you may not be able to use your new number(s) immediately.";
  
//  fdfd.test()
}

@end
