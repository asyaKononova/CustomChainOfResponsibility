//
//  FirstViewController.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/19/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "FirstProtocol.h"
#import "UIResponder+Target.h"

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"First";
    self.view.backgroundColor = [UIColor darkGrayColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    id<FirstProtocol> target = [self targetForProtocol:@protocol(FirstProtocol) withSender:self];
    self.textLabel.text = [target first];
}

- (void)onNextTap
{
    SecondViewController *controller = [SecondViewController new];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
