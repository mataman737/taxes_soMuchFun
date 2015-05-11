//
//  ViewController.m
//  taxes_soMuchFun
//
//  Created by Stephen T. Mata on 5/10/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double chiTax;
@property double nyTax;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *amountEntered = self.priceTextField.text;
    double amount = amountEntered.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = amount * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = amount * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else {
        double result = amount * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }



}


@end
