//
//  File.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit


class SobremesaRepository {

 let sobremesas = [Sobremesa(id: 1, descricao: "Brigadeiro", valor: 18.90, descricaoCompleta: "Tipico doce brasileiro", imagem: "brigadeiro"),
                   Sobremesa(id: 2, descricao: "Fio de ovos", valor: 17.90, descricaoCompleta: "Tipico doce português", imagem: "fioOvos"),
                   Sobremesa(id: 3, descricao: "Sorvete", valor: 15.40, descricaoCompleta: "Sorvete de creme tradicional", imagem: "sorvete"),
                   Sobremesa(id: 4, descricao: "Salada de frutas", valor: 15.40, descricaoCompleta: "Salada de frutas variadas", imagem: "saladaFruta")]
    
    func findAll() -> Array<Sobremesa> {
        return sobremesas
    }
    
    func getImage(imagePath: String) -> UIImage {
        if let retorno = UIImage(named: imagePath) {
            return retorno
        } else {
            return UIImage()
        }
    }
    
    func findById(id: Int) -> Sobremesa {
        for sobremesa in sobremesas {
            if sobremesa.id == id {
                return sobremesa
            }
        }
        return Sobremesa(id: 0, descricao: "", valor: 0.0, descricaoCompleta: "", imagem: "")
    }
}
