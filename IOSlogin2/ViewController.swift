//
//  ViewController.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var btnLoguear:UIButton?
    @IBOutlet var txtfUsuario:UITextField?
    @IBOutlet var txtfPass:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func accionbtnLoguear(){
        
        if(txtfUser?.text != "" && txtfPass?.text != ""){
            
            FIRAuth.auth()?.signIn(withEmail: (txtfUser?.text)!, password: (txtfPass?.text)!) { (user, error) in
                
                if(error == nil){
                    self.performSegue(withIdentifier: "tran1", sender: nil)
                }
                else{
                    print("Error",error!)
                }
                
            }
            
        }
        
    }
}
