//
//  main.m
//  MachLearn
//
//  Created by David Cox on 6/20/14.
//  Copyright (c) 2014 David Cox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Matrix.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Matrix *matrix = [[Matrix alloc] initWithValue:[NSNumber numberWithDouble:2] andRows:2 byColumns:4];
        [matrix print];
        
    }
    return 0;
}

