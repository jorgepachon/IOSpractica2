//
//  Coche.swift
//  Actividad1
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//


import UIKit

class Coche: NSObject {
    
    var sNombre:String?
    var sMarca:String?
    var iFabricado:Int?
    var sRutaImagen:String?
    var dbLon:Double?
    var dbLat:Double?
    
    init(valores:[String:AnyObject]){
        sNombre=valores["Modelo"] as? String
        sMarca=valores["Marca"] as? String
        iFabricado=valores["Fabricado"] as? Int
        sRutaImagen=valores["RutaImagen"] as? String
        dbLat=valores["lat"] as? Double
        dbLon=valores["lon"] as? Double
        
    }
}
