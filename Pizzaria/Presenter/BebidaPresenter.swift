//
//  BebidaPresenter.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit

class BebidaPresenter {
    typealias T = Bebida

    let repository: BebidaRepository = BebidaRepository()
    
    func findAll() -> Array<Bebida> {
        return repository.findAll()
    }
    
    func findById(id: Int) -> Bebida {
        return repository.findById(id: id)
    }
    
    func loadImage(imagePath: String) -> UIImage {
        return repository.getImage(imagePath: imagePath)
    }
    
    func getCount() -> Int {
        return repository.findAll().count
    }
}
