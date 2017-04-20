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
            cell.lblNombre?.text="jorge"
        }
        else if(indexPath.row==1){
            cell.lblNombre?.text="pepe"
        }
        else if(indexPath.row==2){
            cell.lblNombre?.text="antonio"
        }
        else if(indexPath.row==3){
            cell.lblNombre?.text="peter"
        }
        else if(indexPath.row==4){
            cell.lblNombre?.text="wen"
        }

                return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
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
