//
//  ViewController.swift
//  TableView
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 fer. All rights reserved.
//

import UIKit

//Aqui es para que pueda delegar en el table view
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Gabriel", apellido: "Pereda", matricula: "ABC1234"))
        alumnos.append(Alumno(nombre: "Pedro", apellido: "Azul", matricula: "ABC132"))
        alumnos.append(Alumno(nombre: "Maria", apellido: "Estrada", matricula: "AVF1234"))
        alumnos.append(Alumno(nombre: "Juan", apellido: "Rodriguez", matricula: "ASC982"))
        alumnos.append(Alumno(nombre: "Gerardo", apellido: "Lopez", matricula: "PLI932",correo: "hola@gmail.com"))
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
        //esta funcion trae una instancia de la celda segun el identificador que se le de
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController //Asi se hace el casting (as? y el tipo de clase a la que se le hace casting)
        //index path dice la seccion y la fila de la que quiero la informacion
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellido.text = alumnos[indexPath.row].apellido
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        return celda!
    }
    
    //Establece el tamaño de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(alumnos[indexPath.row].correo != nil)
        {
            return 120
        }else
        {
            return 78
        }
    }
    
}

