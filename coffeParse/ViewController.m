//
//  ViewController.m
//  coffeParse
//
//  Created by Galileo Guzman on 30/03/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGuardarEnParse:(id)sender {
    //Metodo disparado por el boton de guardar
    PFObject *testObject = [PFObject objectWithClassName:@"panaderia"];
    
    testObject[@"nombrePanaderia"] = self.txtNombrePanaderia.text;
    testObject[@"descripcion"] = self.txtDescripcion.text;
    
    if([testObject saveInBackground]){
        self.txtNombrePanaderia.text = NULL;
        self.txtDescripcion.text = NULL;
        NSLog(@"Guardado correctamente");
    }else{
        NSLog(@"Corre en circulos algo salio mal :(");
    }
    
}
@end
