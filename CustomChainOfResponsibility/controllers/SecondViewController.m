//
//  SecondViewController.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/19/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "SecondViewController.h"
#import "StupidViewController.h"
#import "SecondProtocol.h"
#import "UIResponder+Target.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Second";
    self.view.backgroundColor = [UIColor darkGrayColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    id<SecondProtocol> target = [self targetForProtocol:@protocol(SecondProtocol) withSender:self];
    self.textLabel.text = [target second];
}

- (void)onNextTap
{
    StupidViewController *controller = [StupidViewController new];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
