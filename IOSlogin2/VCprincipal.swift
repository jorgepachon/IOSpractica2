//
//  VCprincipal.swift
//  IOSlogin2
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//

import UIKit

class VCprincipal: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbMitable:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCelda1 = tableView.dequeueReusableCell(withIdentifier: "Celda1") as! TVCelda1
        
        if (indexPath.row==0) {
            <#code#>
        }
        else if(indexPath.row==1){
            
        }
        else if(indexPath.row==2){
            
        }
        else if(indexPath.row==3){
            
        }
        else if(indexPath.row==4){
            
        }

                return cell
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
