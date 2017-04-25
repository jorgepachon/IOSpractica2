//
//  Mapa.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 25/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit
import MapKit
import FirebaseDatabase

class Mapa: UIViewController {
    
    @IBOutlet weak var map: MKMapView?
    var pines:[String: MKAnnotation]? = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        map?.showsUserLocation = true
        
        DataHolder.sharedInstance.firDatabaseRef.child("Coches").observe(FIRDataEventType.value, with: { (snapshot) in
            
            let arTemp=snapshot.value as? Array<AnyObject>
            DataHolder.sharedInstance.arCoche=Array<Coche>()
            
            for  co in arTemp! as [AnyObject]{
                let cochei=Coche(valores: co as![String : AnyObject])
                DataHolder.sharedInstance.arCoche?.append(cochei)
                
                var coordTemp:CLLocationCoordinate2D = CLLocationCoordinate2D()
                coordTemp.latitude = cochei.dbLat!
                coordTemp.longitude = cochei.dbLon!
                self.agregarPin(coordenada: coordTemp, titulo: cochei.sNombre!)
            }
            
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func agregarPin(coordenada: CLLocationCoordinate2D, titulo varTitutlo:String){
        var annotation:MKPointAnnotation = MKPointAnnotation()
        
        if (pines?[varTitulo] == nil) {
            
        }else{
            annotation = pines?[varTitulo] as! MKPointAnnotation
            map?.removeAnnotation(annotation)
        }
        
        annotation.coordinate = coordenada
        annotation.title = varTitulo
        
        pines?[varTitulo] = annotation
        
        map?.addAnnotation(annotation)
    }

    func centralizarEnPosicion(coordenada: CLLocationCoordinate2D){
        let region:MKCoordinateRegion = MKCoordinateRegion(center:coordenada,span:MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        map?.setRegion(region, animated: true)
    }

  

}
