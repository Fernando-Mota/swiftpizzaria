//
//  ViewDescricao.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit

class ViewDescricao: UIViewController {
    
    
    @IBOutlet weak var ibagem: UIImageView!
    
    @IBOutlet weak var descricaoCompleta: UITextView!
    
    @IBOutlet weak var preco: UITextView!
    
    var produto: Produto?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let produtoDescricao = produto {
            descricaoCompleta.text = produtoDescricao.getDescricaoCompleta()
            preco.text = "Preço \(produtoDescricao.getValorTexto())"
            ibagem.image = pizzaPresenter.loadImage(imagePath: produtoDescricao.getImagePath())
        }
    }

    @IBAction func addToCart(_ sender: UIButton) {
        if let produtoAAdicionar = produto {
            carrinho.adiciona(produto: produtoAAdicionar)
        }
    }
}
