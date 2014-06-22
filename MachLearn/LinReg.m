//
//  LinReg.m
//  MachLearn
//
//  Created by David Cox on 6/20/14.
//  Copyright (c) 2014 David Cox. All rights reserved.
//

#import "LinReg.h"

@implementation LinReg : NSObject

@synthesize theta;

-(id) init
{
    if (self = [super init])
    {
        theta = [[Matrix alloc] initWithValue:0 andRows:2 byColumns:1];
    }
    return self;
}

-(void) print_hypothesis
{
    NSLog(@"%f + %fx", [[theta getElementAtRow:0 andColumn:0]doubleValue], [[theta getElementAtRow:1 andColumn:0]doubleValue]);
}

-(void) train: (Matrix *) matrix withAlpha:(double) alpha withIterations:(int) iterations
{
    /* Train on data-set matrix*/
    
    //First add column of 1s onto matrix
    NSMutableArray *ones = [NSMutableArray arrayWithCapacity:[matrix rows]];
    for (int i = 0; i < [matrix rows]; i++)
        [ones addObject:[NSNumber numberWithDouble:1.0]];
    matrix = [matrix insertColumn: ones atColumnIndex:0];
    
    Matrix* x = [matrix getSubMatrixFromRow:0 toRow:[matrix rows] andFromColumn:0 toColumn:2];
    Matrix* y = [matrix getSubMatrixFromRow:0 toRow:[matrix rows] andFromColumn:2 toColumn:3];
    
    for (int i = 0; i < iterations; i++)
    {
        Matrix *hyp = [x multiplyMatrix:theta];
        Matrix *diff = [hyp subtractMatrix:y];
        Matrix *temp = [[[[x transpose] multiplyMatrix:diff] multiplyScalar:[NSNumber numberWithDouble:alpha]] divideScalar:[NSNumber numberWithDouble:[matrix rows]]];
        theta = [theta subtractMatrix:temp];
    }
    
}

-(double) test: (double) x
{
    return [[theta getElementAtRow:0 andColumn:0] doubleValue] + [[theta getElementAtRow:1 andColumn:0]doubleValue]*x;
}

@end
