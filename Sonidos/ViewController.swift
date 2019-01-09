//
//  ViewController.swift
//  Sonidos
//
//  Created by Memo Figueredo on 1/8/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables sonidos
    let leonSonido = Sonidos(named: "Grua")
    let osoSonido = Sonidos(named: "Gruaaa")
    let monoSonido = Sonidos(named: "jijiji")

    //Conectores
    
    @IBOutlet weak var sonidoAnimal: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 //acciones
    
    @IBAction func leonSonido(_ sender: Any) {
        
        sonidoAnimal.text = "groau"
        leonSonido.play()
    }
    
    @IBAction func osoSonido(_ sender: Any) {
        sonidoAnimal.text = "grouau"
        osoSonido.play()
    }
    
    @IBAction func monoSonido(_ sender: Any) {
        
        sonidoAnimal.text = "jijiji"
        monoSonido.play()
    }
    
}

