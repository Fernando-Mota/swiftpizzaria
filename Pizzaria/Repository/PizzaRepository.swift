//
//  PizzaRepository.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit


class PizzaRepository {
    
    let pizzas = [Pizza(id: 1, descricao: "Mussarela", valor: 34.50, descricaoCompleta: "Pizza feita de queijo mussarela, molho e azeitonas", imagem: "mussarela"),
                  Pizza(id: 2, descricao: "Frango com catupiry", valor: 42.30, descricaoCompleta: "Pizza feita com catupiri (legitimo), molho, frango desfiado e azeitonas", imagem: "frangoCatupiry"),
                  Pizza(id: 3, descricao: "Atum", valor: 34.50, descricaoCompleta: "Pizza feita com atum, cebola, molho e azeitonas", imagem: "atum"),
                  Pizza(id: 4, descricao: "Portuguesa", valor: 34.50, descricaoCompleta: "Pizza feita com mussarela, ovos, presunto, cebola, molho e azeitonas", imagem: "portuguesa")]

    func findAll() -> Array<Pizza> {
        return pizzas
    }
    
    func getImage(imagePath: String) -> UIImage {
        if let retorno = UIImage(named: imagePath) {
            return retorno
        } else {
            return UIImage()
        }
    }
    
    func findById(id: Int) -> Pizza {
        for pizza in pizzas {
            if pizza.id == id {
                return pizza
            }
        }
        return Pizza(id: 0, descricao: "", valor: 0.0, descricaoCompleta: "", imagem: "")
    }
}
