//
//  Pizza.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import Foundation


class Pizza: Produto {
    
    let id: Int

    let descricao: String
    
    let valor: Float
    
    let descricaoCompleta: String
    
    let imagem: String
    
    init(id: Int, descricao: String, valor: Float, descricaoCompleta: String, imagem: String) {
        self.id = id
        self.descricao = descricao
        self.descricaoCompleta = descricaoCompleta
        self.valor = valor
        self.imagem = imagem
    }
    
    func getValor() -> Float {
        return valor
    }
    
    func getDescricao() -> String {
        return descricao
    }
    
    func getValorTexto() -> String {
        return "R$ \(valor)"
    }
    
    func getDescricaoCompleta() -> String {
        return descricaoCompleta
    }
    
    func getImagePath() -> String {
        return imagem
    }
}
