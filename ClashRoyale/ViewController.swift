//
//  ViewController.swift
//  ClashRoyale
//
//  Created by Jorge MR on 22/10/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //button.titleLabel?.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Agregar(_ sender: UIButton) {
    }
    
    @IBAction func Buscar(_ sender: UIButton) {
    }
    
    @IBAction func Coleccion(_ sender: UIButton) {
    }
    
    @IBAction func Borrar(_ sender: UIButton) {
    }
    
}

