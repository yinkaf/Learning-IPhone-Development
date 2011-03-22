//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Yinka Fagbenro on 22/03/2011.
//  Copyright 2011 XIPSOFT Computing Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
    
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;

@end
