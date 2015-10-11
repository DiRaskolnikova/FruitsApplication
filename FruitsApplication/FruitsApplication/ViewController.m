//
//  ViewController.m
//  FruitsApplication
//
//  Created by Diana on 10/2/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myLabel.font = [UIFont boldSystemFontOfSize:7];
    myLabel.textColor = [UIColor brownColor];
    [myLabel setNumberOfLines:0];
    [myLabel sizeToFit];
    [myLabel setBackgroundColor:[UIColor orangeColor] ];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
     AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
     [myLabel setText:[[appDelegate myTree] description]];
}

- (IBAction)growTree:(id)sender {
    
    AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [[appDelegate myTree] grow];
    //NSLog(@"%@", [[appDelegate myTree] description]);
    [myLabel setText:[[appDelegate myTree] description]];
}

- (IBAction)shakeTree:(id)sender {
    
    AppDelegate * appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [[appDelegate myTree] shake];
    //NSLog(@"%@", [[appDelegate myTree] description]);
    [myLabel setText:[[appDelegate myTree] description]];
}

@end
