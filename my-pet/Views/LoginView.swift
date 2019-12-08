//
//  ViewController.swift
//  my-pet
//
//  Created by Mateus Sousa on 03/12/19.
//  Copyright © 2019 Mateus Sousa. All rights reserved.
//

import UIKit

class LoginView: UIViewController {
    
    let iconApp = UIImageView()
    let nameApp = UILabel()
    let imageHeader = UIImageView()
    let imageFooter = UIImageView()
    
    let viewForm = UIView()
    let typeForm = UILabel()
    let fieldEmail = UITextField()
    let fieldPassword = UITextField()
    let sublimeFieldEmail = UIView()
    let sublimeFieldPassword = UIView()
    let forgotPasswordButton = UIButton()
    
    let signInButton = UIButton()
    let registeUserButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        addComponents()
        addElementsInForm()
        setConstraints()
    }
    
    private func setDefaultsElements(){
        iconApp.image = UIImage(named: "")
        nameApp.text = "MyPet"
        nameApp.font = .boldSystemFont(ofSize: 23)
    }
    
    private func addComponents() {
        self.view.addSubview(imageHeader)
        self.view.addSubview(imageFooter)
        self.view.addSubview(iconApp)
        self.view.addSubview(nameApp)
        self.view.addSubview(viewForm)
        self.view.addSubview(signInButton)
        self.view.addSubview(registeUserButton)
        addElementsInForm()
    }
    
    private func addElementsInForm(){
        viewForm.addSubview(typeForm)
        viewForm.addSubview(fieldEmail)
        viewForm.addSubview(fieldPassword)
        viewForm.addSubview(sublimeFieldEmail)
        viewForm.addSubview(sublimeFieldPassword)
        viewForm.addSubview(forgotPasswordButton)
    }
    
    private func setConstraints(){
        setConstraintsElementsContainer()
        setConstraintsElementsForm()
    }
    
    private func setConstraintsElementsContainer(){
        iconApp.translatesAutoresizingMaskIntoConstraints = false
        nameApp.translatesAutoresizingMaskIntoConstraints = false
        imageHeader.translatesAutoresizingMaskIntoConstraints = false
        imageFooter.translatesAutoresizingMaskIntoConstraints = false
        viewForm.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        registeUserButton.translatesAutoresizingMaskIntoConstraints = false
        
        let widthDevice = UIScreen.main.bounds.width
        NSLayoutConstraint.activate([
            imageHeader.widthAnchor.constraint(equalToConstant: widthDevice),
            imageHeader.heightAnchor.constraint(equalToConstant: widthDevice),
            imageHeader.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 0),
            imageHeader.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
            
            imageFooter.widthAnchor.constraint(equalToConstant: widthDevice),
            imageFooter.heightAnchor.constraint(equalToConstant: widthDevice),
            imageFooter.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor, constant: 0),
            imageFooter.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
            
            iconApp.widthAnchor.constraint(equalToConstant: 40),
            iconApp.heightAnchor.constraint(equalToConstant: 40),
            
            nameApp.leadingAnchor.constraint(equalTo: iconApp.trailingAnchor, constant: 5),
            nameApp.centerYAnchor.constraint(equalTo: iconApp.centerYAnchor, constant: 0),
            
            
            
        ])
    }
    
    private func setConstraintsElementsForm(){
        typeForm.translatesAutoresizingMaskIntoConstraints = false
        fieldEmail.translatesAutoresizingMaskIntoConstraints = false
        fieldPassword.translatesAutoresizingMaskIntoConstraints = false
        sublimeFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        sublimeFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            typeForm.leadingAnchor.constraint(equalTo: viewForm.leadingAnchor, constant: 10),
            typeForm.topAnchor.constraint(equalTo: viewForm.topAnchor, constant: 20),
            
            fieldEmail.leadingAnchor.constraint(equalTo: viewForm.leadingAnchor, constant: 10),
            fieldEmail.topAnchor.constraint(equalTo: viewForm.topAnchor, constant: 60),
            fieldEmail.trailingAnchor.constraint(equalTo: viewForm.trailingAnchor, constant: -10),
            fieldEmail.heightAnchor.constraint(equalToConstant: 40),
            
            fieldPassword.leadingAnchor.constraint(equalTo: viewForm.leadingAnchor, constant: 10),
            fieldPassword.topAnchor.constraint(equalTo: fieldEmail.topAnchor, constant: 20),
            fieldPassword.trailingAnchor.constraint(equalTo: viewForm.trailingAnchor, constant: -10),
            fieldPassword.heightAnchor.constraint(equalToConstant: 40),
            
            sublimeFieldEmail.leadingAnchor.constraint(equalTo: fieldEmail.leadingAnchor, constant: 0),
            sublimeFieldEmail.topAnchor.constraint(equalTo: fieldEmail.bottomAnchor, constant: 0),
            sublimeFieldEmail.trailingAnchor.constraint(equalTo: fieldEmail.trailingAnchor, constant: -10),
            sublimeFieldEmail.heightAnchor.constraint(equalToConstant: 1),
            
            sublimeFieldPassword.leadingAnchor.constraint(equalTo: fieldPassword.leadingAnchor, constant: 0),
            sublimeFieldPassword.topAnchor.constraint(equalTo: fieldPassword.bottomAnchor, constant: 0),
            sublimeFieldPassword.trailingAnchor.constraint(equalTo: fieldPassword.trailingAnchor, constant: -10),
            sublimeFieldPassword.heightAnchor.constraint(equalToConstant: 1),
            
            forgotPasswordButton.trailingAnchor.constraint(equalTo: viewForm.trailingAnchor, constant: -10),
            forgotPasswordButton.bottomAnchor.constraint(equalTo: viewForm.bottomAnchor, constant: -10)
        ])
    }
}

