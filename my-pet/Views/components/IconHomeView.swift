//
//  IconHome.swift
//  my-pet
//
//  Created by Mateus Sousa on 09/12/19.
//  Copyright © 2019 Mateus Sousa. All rights reserved.
//

import UIKit

class IconHomeView: UIView {
    let containerSuper = UIView()
    let imageContainer = UIImageView()
    let containerSub = UIImageView()
    let nameAction = UILabel()
    
    private func addElements(){
        self.addSubview(containerSuper)
        self.addSubview(imageContainer)
        self.addSubview(containerSub)
        self.addSubview(nameAction)
    }
    
    private func setConstraints(){
        containerSuper.translatesAutoresizingMaskIntoConstraints = false
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        containerSub.translatesAutoresizingMaskIntoConstraints = false
        nameAction.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerSuper.heightAnchor.constraint(equalToConstant: 70),
            containerSuper.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
}
