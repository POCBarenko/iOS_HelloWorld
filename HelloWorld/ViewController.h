//
//  ViewController.h
//  HelloWorld
//
//  Created by ios2602 on 12/04/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, weak) IBOutlet UITextField *myTextField;
@property(nonatomic, weak) IBOutlet UILabel *myLabel;

- (IBAction)myButtonAction:(id)sender;


@property(nonatomic, weak) IBOutlet UITextField *myFirstNumber;
@property(nonatomic, weak) IBOutlet UITextField *mySecondNumber;

- (IBAction)mySumAction:(id)sender;


@end
