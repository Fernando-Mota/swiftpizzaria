//
//  BebidaRepository.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit

class BebidaRepository {

    let bebidas = [Bebida(id: 1, descricao: "Refrigerante", valor: 12.80, descricaoCompleta: "Refrigerante de sabores variados", imagem: "refrigerante"),
                   Bebida(id: 2, descricao: "Vinho Tinto", valor: 60.90, descricaoCompleta: "Vinho tinto suave de mesa", imagem: "vinhoTinto"),
                   Bebida(id: 3, descricao: "Pinga", valor: 40.80, descricaoCompleta: "Água ardente de minas", imagem: "pinga"),
                   Bebida(id: 4, descricao: "Suco Natural", valor: 18.90, descricaoCompleta: "Suco natural de frutas variadas", imagem: "suco")]
    
    func findAll() -> Array<Bebida>{
        return bebidas
    }
    
    func getImage(imagePath: String) -> UIImage {
        if let retorno = UIImage(named: imagePath) {
            return retorno
        } else {
            return UIImage()
        }
    }
    
    func findById(id: Int) -> Bebida {
        for bebida in bebidas {
            if bebida.id == id {
                return bebida
            }
        }
        return Bebida(id: 0, descricao: "", valor: 0.0, descricaoCompleta: "", imagem: "")
    }
}
