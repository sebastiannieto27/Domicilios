//
//  Directions.swift
//  PruebaDomicilios
//
///  Created by sebastian nieto.
//  Copyright © 2017 sebastian nieto. All rights reserved.



/* En esta clase  guardaremos la informacion basica de la ruta en el mapa
* como el nombre, localizacion y coordenadas
*/
import MapKit
import AddressBook


class Directions : NSObject,MKAnnotation
{
    // let se utilizan para constantes en este caso el title di tipo String
    let title: String?
    // Aqui el nombre de la localizacion de tipo String
    let locationName : String?
    // Aqui las coordenadas en latitud y longuitud que settearan de tipo CLLocationCoordinate2D
    let coordinate: CLLocationCoordinate2D
    
    // Aqui se inicializan las variables como un constructor en programacion orientada a objetos
    init(title : String?, locationName : String?, coordinate : CLLocationCoordinate2D)
    {
        self.title=title
        self.locationName=locationName
        self.coordinate=coordinate
        
        super.init()
    }
    
    // metodo que retorna el nombre de la localizacion
    var subtitle: String? {
        return locationName
    }
}


