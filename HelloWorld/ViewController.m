//
//  ViewController.m
//  HelloWorld
//
//  Created by ios2602 on 12/04/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController



@synthesize myLabel, myTextField;

-(IBAction)myButtonAction:(id)sender
{
    NSString *text = [myTextField text];
    NSString *messageLog = [NSString stringWithFormat:@"valor texto: %@", text];
    NSLog(@"%@",messageLog);
    
    [myLabel setText:text];
    NSLog(@"Label configurado para: %1$@",text);
}




@synthesize myFirstNumber, mySecondNumber;

-(IBAction)mySumAction:(id)sender
{
    NSInteger firstNumber = [[myFirstNumber text] integerValue];
    NSInteger secondNumber = [[mySecondNumber text] integerValue];
    
    NSInteger result = firstNumber + secondNumber;
    NSLog(@"Conta: %d + %d = %d", firstNumber, secondNumber, result);
    
    [myLabel setText:[NSString stringWithFormat:@"Resultado: %d", result]];
}



//@synthesize myFirstSlider, mySecondSlider;

-(IBAction)myFirstSliderUpdateValuesAction:(UISlider *)slider{
    [myFirstNumber setText:[NSString stringWithFormat:@"%.0f",[slider value]]];
}

-(IBAction)mySecondSliderUpdateValuesAction:(UISlider *)slider{
    [mySecondNumber setText:[NSString stringWithFormat:@"%.0f",[slider value]]];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
