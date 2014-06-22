//
//  main.m
//  MachLearn
//
//  Created by David Cox on 6/20/14.
//  Copyright (c) 2014 David Cox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Matrix.h"
#import "LinReg.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        LinReg *reg = [[LinReg alloc] init];
        Matrix *data = [[Matrix alloc] initWithContentsFromFile:@"/Users/davidcox95/XcodeProjects/MachLearn/MachLearn/my_mat.txt"];
        [data print];
        [reg train:data withAlpha:0.01 withIterations:10000];
        [reg print_hypothesis];
        
        NSLog(@"%f", [reg test:2.5]);
        
    }
    return 0;
}

