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
    
    @IBOutlet weak var busqueda: UISearchBar!
    
    @IBOutlet weak var tabla1: UITableView!
    @IBOutlet weak var tabla2: UITableView!
    
    struct tablauno {
        let section: String
        let picture1: String
        let picture2: String
        let picture3: String
        let picture4: String
    }
    
    let datauno: [tablauno] = [
        tablauno(section: "Telefonía", picture1: "tigo_png", picture2: "tigo_png", picture3: "tigo_png", picture4: "tigo_png"),
        tablauno(section: "Servicios Privados", picture1: "tigo_png", picture2: "tigo_png", picture3: "tigo_png", picture4: "tigo_png"),
        tablauno(section: "Servicios públicos", picture1: "tigo_png", picture2: "tigo_png", picture3: "tigo_png", picture4: "tigo_png")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        busqueda.delegate = self
        
        tabla1.dataSource = self
        
        let nibuno = UINib(nibName: "Titulo", bundle: nil)
        tabla1.register(nibuno, forCellReuseIdentifier: "celda")

    }
    
    func restoreOriginalDesign(for button: UIButton) {
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
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

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        busqueda.resignFirstResponder()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datauno.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let uno = datauno[indexPath.row]
        let cell = tabla1.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! Titulo
        cell.section.text = uno.section
        cell.imageone.image = UIImage(named: "tigo_png")
        cell.imagetwo.image = UIImage(named: uno.picture2)
        cell.imagethree.image = UIImage(named: uno.picture3)
        cell.imagefour.image = UIImage(named: uno.picture4)
        return cell
    }
}
