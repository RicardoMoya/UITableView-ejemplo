//
//  Vista2.h
//  EjemploTablas
//
//  Created by Ricardo Moya Garcia on 01/06/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vista2 : UIViewController

@property (nonatomic, strong) NSString *titulo;
@property (nonatomic, strong) NSString *contenidoTexto;
@property (nonatomic, strong) IBOutlet UITextView *contenedorTexto;

@end
