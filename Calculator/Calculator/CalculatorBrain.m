//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Yinka Fagbenro on 22/03/2011.
//  Copyright 2011 XIPSOFT Computing Ltd. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain

- (void)setOperand:(double)aDouble
{
    operand = aDouble;
}
- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + operand;
    } else if([@"*" isEqual:waitingOperation]) {
        operand = waitingOperand * operand;
    }else if([@"-" isEqual:waitingOperation]) {
        operand = waitingOperand - operand;
    }else if([@"/" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / operand;
        }
    }
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    }else if([@"+/-" isEqual:operation]){
        operand = - operand; 
    }
    else{
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}


@end
