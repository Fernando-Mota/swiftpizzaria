//
//  Carrinho.swift
//  Pizzaria
//
//  Created by Swift on 30/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import Foundation


class Carrinho {

    var items: Array<Produto> = []
    
    func getTotal() -> String {
        if items.isEmpty {
            return "N/A"
        }
        var total: Float = 0.0
        for item in items {
            total = total + item.getValor()
        }
        return "R$: \(total)"
    }
    
    func adiciona(produto: Produto) {
        items.append(produto);
    }
    
    func limpaCarrinho() {
        items.removeAll()
    }
}
