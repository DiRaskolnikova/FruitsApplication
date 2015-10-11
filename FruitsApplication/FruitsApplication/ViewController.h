//
//  ViewController.h
//  FruitsApplication
//
//  Created by Diana on 10/2/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController
{
    
    IBOutlet UIButton *growButton;
    IBOutlet UILabel *myLabel;
}
- (IBAction)growTree:(id)sender;
- (IBAction)shakeTree:(id)sender;

@end
