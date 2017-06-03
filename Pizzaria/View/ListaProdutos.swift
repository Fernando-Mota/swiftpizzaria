//
//  ListaProdutos.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit

class ListaProdutos: UITableViewController {

    @IBOutlet weak var descricao: UILabel!
    
    @IBOutlet weak var preco: UILabel!
    
    var dados: Array<Produto> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch currentPresenter {
        case 0:
            dados = pizzaPresenter.findAll()
        case 1:
            dados = bebidaPresenter.findAll()
        default:
            dados = sobremesaPresenter.findAll()
        }

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        let descricao = cell.viewWithTag(1) as! UILabel
        
        let valor = cell.viewWithTag(2) as! UILabel
        
        descricao.text = dados[indexPath.row].getDescricao()
        valor.text = dados[indexPath.row].getValorTexto()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "descricao", sender: dados[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let telaDescricao = segue.destination as? ViewDescricao {
            telaDescricao.produto = (sender as! Produto)
        }
    }
    
}
