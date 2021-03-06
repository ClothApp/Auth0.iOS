//
//  Application.m
//  basic-sample
//
//  Created by Martin Gontovnikas on 30/09/14.
//  Copyright (c) 2014 Auth0. All rights reserved.
//

#import "Application.h"

#import <Auth0.iOS/Auth0.h>
#import <UICKeyChainStore/UICKeyChainStore.h>

@implementation Application

#pragma mark Singleton Method

+ (Application*)sharedInstance {
    static Application *sharedApplication = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedApplication = [[self alloc] init];
    });
    return sharedApplication;
}

- (id)init {
    self = [super init];
    if (self) {
        _store = [[UICKeyChainStore alloc] initWithService:@"Auth0"];
    }
    return self;
}

@end
