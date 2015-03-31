//
//  ObjetosOneByOne.m
//  coffeParse
//
//  Created by Galileo Guzman on 30/03/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//


#import "ObjetosOneByOne.h"
#import <Parse/Parse.h>

NSMutableArray *datos;
int posicion;

@interface ObjetosOneByOne ()

@end

@implementation ObjetosOneByOne

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    datos = [[NSMutableArray alloc] init];
    posicion = 0;
    
    PFQuery *query = [PFQuery queryWithClassName:@"panaderia"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error){
        for(id object in objects){
            
            
            [datos addObject:object];
            NSLog(@"%@", object[@"nombrePanaderia"]);
        }
    }];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnNextSender:(id)sender {
    
    PFObject *testObject = [PFObject objectWithClassName:@"panaderia"];
    
    testObject = datos[posicion];
    
    self.lblNombre.text = testObject[@"nombrePanaderia"];
    self.lblDescripcion.text = testObject[@"descripcion"];
    posicion++;
    
}
@end
