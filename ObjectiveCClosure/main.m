//
//  main.m
//  ObjectiveCClosure
//
//  Created by Joakim Sjöstedt on 2020-01-23.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
