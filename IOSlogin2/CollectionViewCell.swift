//
//  CollectionViewCell.swift
//  Actividad1
//
//  Created by Daniel de la Iglesia Gonzalez on 20/4/17.
//  Copyright © 2017 Daniel de la Iglesia Gonzalez. All rights reserved.
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
