//
//  ViewController.swift
//  customTableViewCell
//
//  Created by sebastian nieto.
//  Copyright © 2017 sebastian nieto. All rights reserved.
//
/*
*En esta clase se llenara el tablelistview
*
*/

import UIKit
// Arreglos con los codigos de la ruta de manera global
 let array_Id_elements = ["1001", "1002", "1003", "1004"]
 // variable para enviar la posicion al map sobre la celda
 var myRoute = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 // Arreglos de nombre de la ruta,nombre del colegio y imagenes
    let array_Id_elements = ["1001", "1002", "1003", "1004"]
    let array_NameRoute_elements = ["Ruta 01", "Ruta 02", "Ruta 03", "Ruta 04"]
    let array_NameSchool_elements = ["Colegio Colombia", "Colegio Cundinamarca", "Colegio Huila", "Colegio Nariño"]
    let array_Image_elements=["Bus-128","schooolbus-128","Citycons_bus-128","aiga_bus_on_grn_circle-128"]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        //Los métodos opcionales del protocolo le permiten al UITableViewDelegate administrar selecciones, 
        //configurar encabezados de secciones y pies de página
        tableView.delegate = self
        //UITableViewDataSource es adoptado por un objeto que media el modelo de datos de la aplicación para un objeto UITableView. 
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // Un objeto UITableView debe adoptar el protocolo UITableViewDelegate.
    // Aqui contamos los elementos del array 
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array_Id_elements.count
    }
    //Aqui tenemos tamaño para las celdas.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
     //Aqui llenamos el tablelistview con cada uno de los arreglos respectivos incluyendo las imagenes
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.lb_IdRoute.text = array_Id_elements[indexPath.row]
        cell.ld_NameRoute.text = array_NameRoute_elements[indexPath.row]
        cell.lb_NameSchool.text = array_NameSchool_elements[indexPath.row]
        cell.busImage.image = UIImage(named: array_Image_elements[indexPath.row])
        cell.busImage.layer.cornerRadius = cell.busImage.frame.height / 2
        
        return cell
    }
    
    // Aqui pasamos al mapa cuando le dan un tap en una cleda 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myRoute = indexPath.row
        performSegue(withIdentifier: "ShowMap", sender: self)
        
    }
    
   


}
















