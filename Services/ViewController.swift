//
//  ViewController.swift
//  Services
//
//  Created by Franco Pecci on 2023-08-25.
//

import UIKit

class ViewController: UIViewController {

    var ispressed1 = false
    var ispressed2 = false
    var ispressed3 = false
    var ispressed4 = false
    
    @IBOutlet weak var inicio: UIButton!
    @IBOutlet weak var cuentas: UIButton!
    @IBOutlet weak var tarjetas: UIButton!
    @IBOutlet weak var servicios: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func inicio(_ sender: Any) {
        if ispressed1 {
            inicio.backgroundColor = .lightGray
            inicio.setTitleColor(.black, for: .normal)
        } else {
            inicio.backgroundColor = .red
            inicio.setTitleColor(.white, for: .normal)
        }
        ispressed1.toggle()
    }
    
    @IBAction func cuentas(_ sender: Any) {
        if ispressed2 {
            cuentas.backgroundColor = .lightGray
            cuentas.setTitleColor(.black, for: .normal)
        } else {
            cuentas.backgroundColor = .red
            cuentas.setTitleColor(.white, for: .normal)
        }
        ispressed2.toggle()
    }
    
    @IBAction func tarjetas(_ sender: Any) {
        if ispressed3 {
            tarjetas.backgroundColor = .lightGray
            tarjetas.setTitleColor(.black, for: .normal)
        } else {
            tarjetas.backgroundColor = .red
            tarjetas.setTitleColor(.white, for: .normal)
        }
        ispressed3.toggle()
    }
    
    @IBAction func servicios(_ sender: Any) {
        if ispressed4 {
            servicios.backgroundColor = .lightGray
            servicios.setTitleColor(.black, for: .normal)
        } else {
            servicios.backgroundColor = .red
            servicios.setTitleColor(.white, for: .normal)
        }
        ispressed4.toggle()
    }
}
