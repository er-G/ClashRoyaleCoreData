//
//  ViewController.swift
//  ClashRoyale
//
//  Created by Jorge MR on 22/10/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    
    var managedContext : NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Do any additional setup after loading the view, typically from a nib.
        //button.titleLabel?.numberOfLines = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Agregar(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let imagen = info[UIImagePickerControllerOriginalImage] as? UIImage {
            picker.dismiss(animated: true, completion: {
                self.crearPersonaje(imagen: imagen)
            })
        }
    }
    
    func crearPersonaje(imagen : UIImage){
        let alertController = UIAlertController(title: "Nuevo personaje", message: "Ingresa sus dfatos", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField) in
            textField.placeholder = "Nombre ..."
        }
        alertController.addTextField { (textField: UITextField) in
            textField.placeholder = "Descripcion ..."
        }
        let alertAction = UIAlertAction(title: "Guardar", style: .default) { (action: UIAlertAction) in
            let nombreTextField = alertController.textFields?[0]
            let descripcionTextField = alertController.textFields?[1]
            
            if nombreTextField?.text != "" && descripcionTextField?.text != "" {
                self.nombre.text = nombreTextField?.text
                self.descripcion.text = descripcionTextField?.text
                self.imagen.image = imagen
                
                //CORE DATA INSERT
                
                
            }
        }
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func Buscar(_ sender: UIButton) {
    }
    
    @IBAction func Coleccion(_ sender: UIButton) {
    }
    
    @IBAction func Borrar(_ sender: UIButton) {
    }
    
}

