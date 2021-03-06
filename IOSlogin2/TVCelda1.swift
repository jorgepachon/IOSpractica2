//
//  TVCelda1.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class TVCelda1: UITableViewCell {
    
    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var lblImagen:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    func descargarImagen(ruta:String) {
        
        let islandRef = DataHolder.sharedInstance.firStorageRef?.child(ruta)
        
        islandRef?.data(withMaxSize: 1 * 1024 * 1024) { data, error in
            if error != nil {
            }
            else {
                let image = UIImage(data: data!)
                self.lblImagen?.image=image
            }
        }
    }
}
