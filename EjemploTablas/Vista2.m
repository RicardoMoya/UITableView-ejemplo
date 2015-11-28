//
//  Vista2.m
//  EjemploTablas
//
//  Created by Ricardo Moya Garcia on 01/06/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "Vista2.h"

@interface Vista2 ()

@end

@implementation Vista2

@synthesize titulo, contenidoTexto;
@synthesize contenedorTexto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = titulo;
    self.contenedorTexto.text = contenidoTexto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
