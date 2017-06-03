//
//  ViewCarrinho.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit

class ViewCarrinho: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tabela: UITableView!

    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        tabela.dataSource = self

        total.text = carrinho.getTotal()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carrinho.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabela.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        let descricao = cell.viewWithTag(1) as! UILabel
        
        let valor = cell.viewWithTag(2) as! UILabel
        
        descricao.text = carrinho.items[indexPath.row].getDescricao()
        valor.text = carrinho.items[indexPath.row].getValorTexto()
        
        return cell
    }
}
