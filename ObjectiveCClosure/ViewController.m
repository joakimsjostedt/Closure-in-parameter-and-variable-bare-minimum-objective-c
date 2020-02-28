//
//  ViewController.m
//  ObjectiveCClosure
//
//  Created by Joakim Sjöstedt on 2020-01-23.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
void (^completion)(void);

- (void)viewDidLoad {
    [super viewDidLoad];

    [self myFunc:^{
        NSLog(@"🦋Closure callback");
        dispatch_async(dispatch_get_main_queue(), ^(void){
            completion();
        });
    }];
    
    completion = ^(void){
        NSLog(@"🦋Second closure callback");
    };
}

-(void)myFunc:(void(^)(void))callback {
    callback();
}

@end
