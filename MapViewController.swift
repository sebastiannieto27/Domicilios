//
//  MapViewController.swift
//  PruebaDomicilios
//
//  Created by Fabian Nieto on 3/4/18.
//  Copyright © 2018 Yash Patel. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var map: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let position = array_Id_elements[myRoute]
        switch position {
        case "1001":
            let array_Ruta01_latitude = [4.678737,4.677034,4.676267,4.675104,4.673648,4.67314,4.672464,4.672199,4.671833,4.671244]
            let array_Ruta01_longuitude = [-74.066001,-74.066979,-74.067443,-74.068191,-74.068381,-74.068904,-74.069617,-74.070336,-74.070781,-74.071309]
            var i = 0
            let count = array_Ruta01_latitude.count
            let initialLocation = CLLocation(latitude: array_Ruta01_latitude[0],longitude: array_Ruta01_longuitude[0])
            ZoomMapOn(location: initialLocation)
            while i < count {
                let stopNumber = String(i)
                let sampleDirection1 = Directions(title: "Stop " + stopNumber + "el cell view es" + position, locationName: "Street for stop #" + stopNumber, coordinate: CLLocationCoordinate2D ( latitude: array_Ruta01_latitude[i],longitude: array_Ruta01_longuitude[i]))
                map.addAnnotation(sampleDirection1)
                map.delegate = self
                i = i + 1
            }
        case "1002":
            let array_Ruta02_latitude = [4.684109,4.683157,4.681712,4.683551,4.680461,4.679049,4.68061,4.681091,4.68154,4.68401]
            let array_Ruta02_longuitude = [-74.042726,-74.043144,-74.043906,-74.047457,-74.049077,-74.049753,-74.052693,-74.053787,-74.053841,-74.049507]
            var i = 0
            let count = array_Ruta02_latitude.count
            let initialLocation = CLLocation(latitude: array_Ruta02_latitude[0],longitude: array_Ruta02_longuitude[0])
            ZoomMapOn(location: initialLocation)
            while i < count {
                let stopNumber = String(i)
                let sampleDirection1 = Directions(title: "Stop " + stopNumber + "el cell view es" + position, locationName: "Street for stop #" + stopNumber, coordinate: CLLocationCoordinate2D ( latitude: array_Ruta02_latitude[i],longitude: array_Ruta02_longuitude[i]))
                map.addAnnotation(sampleDirection1)
                map.delegate = self
                i = i + 1
            }
        case "1003":
            let array_Ruta03_latitude = [4.679996,4.685604,4.689139,4.696754,4.700434,4.702948,4.704209,4.704583,4.706305,4.709138]
            let array_Ruta03_longuitude = [-74.037889,-74.035314,-74.034462,-74.031245,-74.028603,-74.030869,-74.035261,-74.045048,-74.050856,-74.053056]
            var i = 0
            let count = array_Ruta03_latitude.count
            let initialLocation = CLLocation(latitude: array_Ruta03_latitude[0],longitude: array_Ruta03_longuitude[0])
            ZoomMapOn(location: initialLocation)
            while i < count {
                let stopNumber = String(i)
                let sampleDirection1 = Directions(title: "Stop " + stopNumber + "el cell view es" + position, locationName: "Street for stop #" + stopNumber, coordinate: CLLocationCoordinate2D ( latitude: array_Ruta03_latitude[i],longitude: array_Ruta03_longuitude[i]))
                map.addAnnotation(sampleDirection1)
                map.delegate = self
                i = i + 1
            }
        case "1004":
            let array_Ruta04_latitude = [4.693959,4.687796,4.691618,4.696077,4.700247,4.704203,4.706524,4.708758,4.711025,4.709315]
            let array_Ruta04_longuitude = [-74.09123,-74.095011,-74.100235,-74.10532,-74.111801,-74.111629,-74.115148,-74.114032,-74.114515,-74.111865]
            var i = 0
            let count = array_Ruta04_latitude.count
            let initialLocation = CLLocation(latitude: array_Ruta04_latitude[0],longitude: array_Ruta04_longuitude[0])
            ZoomMapOn(location: initialLocation)
            while i < count {
                let stopNumber = String(i)
                let sampleDirection1 = Directions(title: "Stop " + stopNumber + "el cell view es" + position, locationName: "Street for stop #" + stopNumber, coordinate: CLLocationCoordinate2D ( latitude: array_Ruta04_latitude[i],longitude: array_Ruta04_longuitude[i]))
                map.addAnnotation(sampleDirection1)
                map.delegate = self
                i = i + 1
            }
        default: break
            print("The first letter of the alphabet")
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    private let regionRadius : CLLocationDistance = 1000
    
    func ZoomMapOn(location : CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        map.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension MapViewController : MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if let annotation = annotation as? Directions{
            
            let identifier = "pin"
            var view : MKPinAnnotationView
            
            if let dequeuedView = map.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView{
                dequeuedView.annotation = annotation
                view = dequeuedView
            }
            else {
                view = MKPinAnnotationView (annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x:-5,y:5)
                view.rightCalloutAccessoryView = UIButton(type :.detailDisclosure ) as UIView
            }
            
            return view
        }
        return nil
        
    }

}
