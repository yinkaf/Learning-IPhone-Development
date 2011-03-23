//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Yinka Fagbenro on 22/03/2011.
//  Copyright 2011 XIPSOFT Computing Ltd. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain
@synthesize operand;

- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + self.operand;
    } else if([@"*" isEqual:waitingOperation]) {
        operand = waitingOperand * self.operand;
    }else if([@"-" isEqual:waitingOperation]) {
        operand = waitingOperand - self.operand;
    }else if([@"/" isEqual:waitingOperation]) {
        if (operand) {
            operand = waitingOperand / self.operand;
        }
    }
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"]) {
        self.operand = sqrt(self.operand);
    }else if([@"+/-" isEqual:operation]){
        self.operand = - self.operand; 
    }
    else{
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = self.operand;
    }
    return self.operand;
}


@end
