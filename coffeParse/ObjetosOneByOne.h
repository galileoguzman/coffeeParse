//
//  ObjetosOneByOne.h
//  coffeParse
//
//  Created by Galileo Guzman on 30/03/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjetosOneByOne : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblDescripcion;
- (IBAction)btnNextSender:(id)sender;

@end
