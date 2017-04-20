//
//  VCregistro.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class VCregistro: UIViewController {
    
    @IBOutlet var txtfRUser:UITextField?
    @IBOutlet var txtfRPass:UITextField?
    @IBOutlet var txtfPasstwo:UITextField?
    @IBOutlet var txtfEmail:UITextField?
    @IBOutlet var errorlogin:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionokr() {
        FIRAuth.auth()?.createUser(withEmail:(txtfEmail?.text)!, password:(txtfRPass?.text)! ) { (user, error) in
            if(error == nil){
                self.performSegue(withIdentifier: "tran2", sender: self)
            }
            else{
                print("Error",error!)
            }
        }
    }
   
}
