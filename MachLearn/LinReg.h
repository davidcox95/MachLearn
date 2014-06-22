//
//  LinReg.h
//  MachLearn
//
//  Created by David Cox on 6/20/14.
//  Copyright (c) 2014 David Cox. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Matrix.h"

@interface LinReg : NSObject

/*theta_0 -> y-intercept, theta_1 -> hypothesis slope*/
@property (readonly) Matrix* theta;
-(id) init;
-(void) print_hypothesis;
-(void) train: (Matrix *) matrix withAlpha: (double) alpha withIterations: (int) iterations;
-(double) test: (double) x;

@end
