//
//  CustomTableViewCell.swift
//  customTableViewCell
//
//  Created by sebastian nieto.
//  Copyright © 2017 sebastian nieto. All rights reserved.
//



/*IBOutlets se utilizan para hacer referencia a algo que está en la Interfaz Grafica. Digamos que hay un botón en el
*Interfaz Grafica que debe tener acceso en el código, puede controlarlo y arrastrarlo al archivo de clase viewcontroller asociado.
*
*
*/

import UIKit

class CustomTableViewCell: UITableViewCell {
 
    // Aqui se hace referencia  la imagen de cada ruta
    @IBOutlet weak var busImage: UIImageView!
    // Aqui  se hace referencia a la celda que contiene la informacion
    @IBOutlet weak var cellView: UIView!
    // Aqui el label donde se muestra el id de la ruta
    @IBOutlet weak var lb_IdRoute: UILabel!
    // Aqui el label donde se muestra el nombre de la ruta
    @IBOutlet weak var ld_NameRoute: UILabel!
    // Aqui el label donde se muestra el nombre del colegio
    @IBOutlet weak var lb_NameSchool: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
