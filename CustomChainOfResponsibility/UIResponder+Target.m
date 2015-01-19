//
//  UIResponder+Target.m
//  CustomChainOfResponsibility
//
//  Created by Anastasia Kononova on 1/17/15.
//  Copyright (c) 2015 Asya Kononova. All rights reserved.
//

#import "UIResponder+Target.h"
#import <objc/runtime.h>

const void *propertyKeyName = @"targetPropertyKeyName";

@implementation UIResponder (Target)

- (id)targetForProtocol:(Protocol *)protocol withSender:(id)sender
{
    if ([self.target conformsToProtocol:protocol]) {
        return self.target;
    }
    
    return [self.nextResponder targetForProtocol:protocol withSender:sender];
}

- (id)target
{
    return objc_getAssociatedObject(self, propertyKeyName);
}

- (void)setTarget:(id)target
{
    objc_setAssociatedObject(self, propertyKeyName, target, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
