//
//  ViewController.m
//  printfZigzagComplete
//
//  Created by admin on 7/13/15.
//  Copyright (c) 2015 iOS31. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//.    +       +       +   0
//.   + +     + +     +    1
//.  +   +   +   +   +     2
//. +     + +     + +      3
//.+       +       +       4

- (void)viewDidLoad {
    [super viewDidLoad];
    int n=7, m=5; //Default: n=5, m=3
    for (int i=0; i<n; i++) {
        NSString *symbol = @"o";
        if (i==0||i==n-1) {
            NSString *stringComplete = @"";
            stringComplete = [stringComplete stringByAppendingString:[self createSpaces:(n-1-i)]];
            stringComplete = [stringComplete stringByAppendingString:symbol];
            for (int j=1; j<m; j++) {
                stringComplete = [stringComplete stringByAppendingString:[self createSpaces:2*(n-1)-1]];
                stringComplete = [stringComplete stringByAppendingString:symbol];
            }
            //NSLog(@"%@", stringComplete);
            printf("%s\n",[stringComplete UTF8String]);
        }
        else{
            NSString *stringComplete = @"";
            stringComplete = [stringComplete stringByAppendingString:[self createSpaces:n-1-i]];
            stringComplete = [stringComplete stringByAppendingString:symbol];
            for (int j=1; j<m; j++) {
                stringComplete = [stringComplete stringByAppendingString:[self createSpaces:2*i-1]];
                stringComplete = [stringComplete stringByAppendingString:symbol];
                stringComplete = [stringComplete stringByAppendingString:[self createSpaces:2*(n-i-1)-1]];
                stringComplete = [stringComplete stringByAppendingString:symbol];
            }
            //NSLog(@"%@",stringComplete);
            printf("%s\n",[stringComplete UTF8String]);
        }
        
    }
    
    
}

- (NSString *) createSpaces: (NSInteger) k;
{
    NSString *stringSpaces = @"";
    for (int i=0; i<k; i++) {
        stringSpaces = [stringSpaces stringByAppendingString:@" "];
    }
    return stringSpaces;
}

@end
