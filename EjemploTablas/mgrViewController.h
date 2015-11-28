//
//  mgrViewController.h
//  EjemploTablas
//
//  Created by Ricardo Moya Garcia on 31/05/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mgrViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    
    NSMutableArray *pajaros;
    NSMutableArray *tipo;
    NSMutableArray *descripcion;
    
}

@property (weak, nonatomic) IBOutlet UITableView *miTabla;

@end
