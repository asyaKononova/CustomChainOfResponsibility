//
//  StupidViewController.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/19/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "StupidViewController.h"
#import "SecondViewController.h"
#import "StupidProtocol.h"
#import "UIResponder+Target.h"

@implementation StupidViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Stupid";
    self.view.backgroundColor = [UIColor darkGrayColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    id<StupidProtocol> target = [self targetForProtocol:@protocol(StupidProtocol) withSender:self];
    self.textLabel.text = [target soStupid];
}

- (void)onNextTap
{
    SecondViewController *controller = [SecondViewController new];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
