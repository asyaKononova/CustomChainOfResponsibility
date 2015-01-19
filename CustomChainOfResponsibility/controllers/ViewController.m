//
//  ViewController.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/17/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleDone target:self action:@selector(onNextTap)];
    
    _textLabel = [UILabel new];
    _textLabel.backgroundColor = [UIColor clearColor];
    _textLabel.textColor = [UIColor whiteColor];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_textLabel];
}

- (void)viewDidLayoutSubviews
{
    _textLabel.frame = self.view.bounds;
}

- (void)onNextTap
{
    @throw [[NSException alloc] initWithName:@"ViewController Exeption" reason:@"Method onNextTap should be implement in subclasses" userInfo:nil];
}

@end
