//
//  SobremesaPresenter.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit


class SobremesaPresenter {
    typealias T = Sobremesa

    let repository = SobremesaRepository()
    
    func findAll() -> Array<Sobremesa> {
        return repository.findAll()
    }

    func findById(id: Int) -> Sobremesa {
        return repository.findById(id: id)
    }
    
    func loadImage(imagePath: String) -> UIImage {
        return repository.getImage(imagePath: imagePath)
    }
    
    func getCount() -> Int {
        return repository.findAll().count
    }
}
