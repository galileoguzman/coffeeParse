//
//  Tabla.h
//  coffeParse
//
//  Created by Galileo Guzman on 30/03/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/PFQueryTableViewController.h>

@interface Tabla : PFQueryTableViewController
@property (strong, nonatomic) IBOutlet UILabel *lblNombrePanaderia;
@property (strong, nonatomic) IBOutlet UILabel *lblDescripcionPanderia;

@end
