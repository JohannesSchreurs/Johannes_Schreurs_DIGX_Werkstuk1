//
//  detailFotoViewController.swift
//  Johannes_Schreurs_Werkstuk1
//
//  Created by Johannes Schreurs on 22/05/2018.
//  Copyright © 2018 Johannes Schreurs. All rights reserved.
//

import UIKit

class detailFotoViewController: UIViewController {

    var imageVanPersoon = UIImage()
    
    @IBOutlet weak var detailFoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailFoto.image = imageVanPersoon
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
