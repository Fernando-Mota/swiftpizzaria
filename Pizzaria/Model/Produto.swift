//
//  Produto.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import Foundation


protocol Produto {
    
    func getValor() -> Float

    func getValorTexto() -> String
    
    func getDescricao() -> String
    
    func getDescricaoCompleta() -> String
    
    func getImagePath() -> String

}
