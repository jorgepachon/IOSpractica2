//
//  CeldaTableViewCell.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 25/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit
import FirebaseStorage

class CeldaTableViewCell: UITableViewCell {
    
    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var lblImagen:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
