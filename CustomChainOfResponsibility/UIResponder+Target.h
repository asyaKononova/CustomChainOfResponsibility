//
//  UIResponder+Target.h
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/17/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Target)

@property (nonatomic, strong) id target;

- (id)targetForProtocol:(Protocol *)protocol withSender:(id)sender;

@end
