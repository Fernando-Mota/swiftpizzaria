//
//  PizzaPresenter.swift
//  Pizzaria
//
//  Created by Swift on 31/05/17.
//  Copyright © 2017 HalphDem. All rights reserved.
//

import UIKit


class PizzaPresenter {

    let repository: PizzaRepository = PizzaRepository();
    
    func findAll() -> Array<Pizza> {
        return repository.findAll()
    }

    func findById(id: Int) -> Pizza {
        return repository.findById(id: id)
    }
    
    func loadImage(imagePath: String) -> UIImage {
        return repository.getImage(imagePath: imagePath)
    }
    
    func getCount() -> Int {
        return repository.findAll().count
    }
}
