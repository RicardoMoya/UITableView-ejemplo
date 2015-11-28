//
//  mgrViewController.m
//  EjemploTablas
//
//  Created by Ricardo Moya Garcia on 31/05/13.
//  Copyright (c) 2013 Ricardo Moya Garcia. All rights reserved.
//

#import "mgrViewController.h"
#import "Vista2.h"

@interface mgrViewController ()

@end

@implementation mgrViewController

@synthesize miTabla;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    pajaros = [NSMutableArray arrayWithObjects:@"BUHO", @"COLIBRÍ", @"CUERVO", @"FLAMENCO", @"KIWI", @"LORO", @"PAVO", @"PINGÜINO", nil];
    
    tipo = [NSMutableArray arrayWithObjects:@"SemiVolador", @"Volador", @"Volador", @"SemiVolador", @"Volador", @"Volador", @"No Volador", @"No Volador", nil];
    
    descripcion = [NSMutableArray arrayWithObjects:@"Búho es el nombre común de aves de la familia Strigidae, del orden de las estrigiformes o aves rapaces nocturnas. Habitualmente designa especies que, a diferencia de las lechuzas, tienen plumas alzadas que parecen orejas.",
    @"Los troquilinos (Trochilinae) son una subfamilia de aves apodiformes de la familia Trochilidae, conocidas vulgarmente como colibríes, quindes, tucusitos, picaflores, chupamirtos, chuparrosas, huichichiquis (idioma nahuatl), mainumby (idioma guaraní) o guanumby. Conjuntamente con las ermitas, que pertenecen a la subfamilia Phaethornithinae, conforman la familia Trochilidae que, en la sistemática de Charles Sibley, se clasifica en un orden propio: Trochiliformes, independiente de los vencejos del orden Apodiformes. La subfamilia Trochilinae incluye más de 100 géneros que comprenden un total de 330 a 340 especies.",
    @"El cuervo común (Corvus corax) es una especie de ave paseriforme de la familia de los córvidos (Corvidae). Presente en todo el hemisferio septentrional, es la especie de córvido con la mayor superficie de distribución. Con el cuervo de pico grueso, es el mayor de los córvidos y probablemente la paseriforme más pesada; en su madurez, el cuervo común mide entre 52 y 69 centímetros de longitud y su peso varía de 0,69 a 1,7 kilogramos. Los cuervos comunes viven generalmente de 10 a 15 años pero algunos individuos han vivido 40 años. Los juveniles pueden desplazarse en grupos pero las parejas ya formadas permanecen juntas toda su vida, cada pareja defendiendo un territorio. Existen 8 subespecies conocidas que se diferencian muy poco aparentemente, aunque estudios recientes hayan demostrado diferencias genéticas significativas entre las poblaciones de distintas regiones.",
    @"Los fenicopteriformes (Phoenicopteriformes), los cuales reciben el nombre vulgar de flamencos, son un orden de aves neognatas, con un único género viviente: Phoenicopterus. Son aves que se distribuyen tanto por el hemisferio occidental como por el hemisferio oriental: existen cuatro especies en América y dos en el Viejo Mundo. Tienen cráneo desmognato holorrino, con 16 a 20 vértebras cervicales y pies anisodáctilos.",
    @"Los kiwis (Apterix, gr. 'sin alas') son un género de aves paleognatas compuesto por cinco especies endémicas de Nueva Zelanda.1 2 Son aves no voladoras pequeñas, aproximadamente del tamaño de una gallina. Antes de la llegada de los humanos alrededor del año 1300, en Nueva Zelanda los únicos mamíferos que había eran murciélagos, y los nichos ecológicos que en otras partes del mundo eran ocupados por animales tan diversos como caballos, lobos y ratones fueron utilizados en Nueva Zelanda por pájaros (y en menor proporción por ciertas especies de reptiles). La denominación kiwi es maorí, idioma del pueblo homónimo de linaje malayopolinesio que colonizó Nueva Zelanda antes de la llegada de los europeos.",
    @"Las Psitácidas (Psittacidae) son una familia de aves psitaciformes llamadas comúnmente loros o papagayos, e incluye a los guacamayos, las cotorras, los periquitos, los agapornis y formas afines.",
    @"Pavo es un género de aves galliformes de la familia Phasianidae, que incluye dos especies, el pavo real común (Pavo cristatus) y el pavo real cuelliverde (Pavo muticus).1",
    @"Los pingüinos (familia Spheniscidae, orden Sphenisciformes) son un grupo de aves marinas, no voladoras, que se distribuyen únicamente en el Hemisferio Sur, sobre todo en sus altas latitudes.", nil];
    
    
    self.miTabla.delegate = self;
    self.miTabla.dataSource = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 * Metodo que devuelve el numero de secciones que va a tener el elemento del "TableView"
 * que en este caso solo va a tener un elemento.
 */
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


/*
 * Método que devuelve el numero de filas que va a tener el "TableView"
 * En este caso devolvera el numero de elementos que tiene el array pajaros
 * definido anteriormente
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return pajaros.count;
}


/*
 * Metodo en el que asignamos contenido a cada celda de la tabla
 * Cada celda de la tabla va a tener tres elementos, una imagen de fondo
 * un titulo y un subtitulo, es decir dos labels
 */
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"celdaPajaros";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // elementos que contienen cada celda con sus tags
    UILabel *labelTitulo = (UILabel *) [cell viewWithTag:10];
    UILabel *labelSubtitulo = (UILabel *) [cell viewWithTag:11];
    UIImageView *foto = (UIImageView *) [cell viewWithTag:12];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    labelTitulo.text = [pajaros objectAtIndex:indexPath.row];
    labelSubtitulo.text = [tipo objectAtIndex:indexPath.row];
    
    
    // Añadimos las imagenes de los pajaros
    UIImage *img;
    
    switch (indexPath.row) {
        case 0:
            img = [UIImage imageNamed:@"im_buho.jpg"];
            break;
        case 1:
            img = [UIImage imageNamed:@"im_colibri.jpg"];
            break;
        case 2:
            img = [UIImage imageNamed:@"im_cuervo.jpg"];
            break;
        case 3:
            img = [UIImage imageNamed:@"im_flamenco.jpg"];
            break;
        case 4:
            img = [UIImage imageNamed:@"im_kiwi.jpg"];
            break;
        case 5:
            img = [UIImage imageNamed:@"im_loro.jpg"];
            break;
        case 6:
            img = [UIImage imageNamed:@"im_pavo.jpg"];
            break;
        case 7:
            img = [UIImage imageNamed:@"im_pinguino.jpg"];
            break;
        default:
            break;
    }
    
    foto.image = img;
    
    return cell;
    
}


/*
 * Método para dar el alto de cada celda de la tabla
 */
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70.f;
}


/*
 * Método para pasar datos de una vista a otra
 */
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"pasarDatos"]){
        
        NSString *titulo = [pajaros objectAtIndex:[[self.miTabla indexPathForSelectedRow] row]];
        [segue.destinationViewController setTitulo:titulo];
        
        NSString *contenidoTexto = [descripcion objectAtIndex:[[self.miTabla indexPathForSelectedRow] row]];
        [segue.destinationViewController setContenidoTexto: contenidoTexto];
    }
    
}

@end
