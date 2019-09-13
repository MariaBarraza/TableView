//
//  ViewController.swift
//  TableView
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 fer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let alumnos = ["Gabriel","Ana Lourdes","Joel","Trejo","Araceli","Karen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    //contenido en cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno")
        return celda!
    }
}

