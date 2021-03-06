//
//  CollectionViewCell.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 25/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imgvMain:UIImageView?
    @IBOutlet var lblNombre:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func descargarImagen(ruta:String) {
        
        let islandRef = DataHolder.sharedInstance.firStorageRef?.child(ruta)
        
        islandRef?.data(withMaxSize: 1 * 1024 * 1024) { data, error in
            if error != nil {
            }
            else {
                let image = UIImage(data: data!)
                self.imgvMain?.image=image
            }
        }
    }
    
}

