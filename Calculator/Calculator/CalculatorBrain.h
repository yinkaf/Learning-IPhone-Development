//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Yinka Fagbenro on 22/03/2011.
//  Copyright 2011 XIPSOFT Computing Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
