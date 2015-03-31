//
//  ViewController.h
//  coffeParse
//
//  Created by Galileo Guzman on 30/03/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtNombrePanaderia;
@property (strong, nonatomic) IBOutlet UITextField *txtDescripcion;
- (IBAction)btnGuardarEnParse:(id)sender;

@end

