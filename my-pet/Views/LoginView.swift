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
        setDefaultsElements()
        addComponents()
        setConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.layoutSubviews()
        viewForm.layoutSubviews()
        viewForm.roundCorners(radius: 20)
        signInButton.roundCorners()
//        viewForm.dropShadow(color: .black, opacity: 0.2, offSet: CGSize(width: -1, height: 1), radius: 10, scale: true)
    }
    
    private func setDefaultsElements(){
        self.view.backgroundColor = .white
        
        iconApp.image = UIImage(named: "pawprint")?.withRenderingMode(.alwaysTemplate)
        iconApp.tintColor = .orange
        nameApp.text = "MyPet"
        nameApp.font = .boldSystemFont(ofSize: 23)
        imageHeader.image = UIImage(named: "man_petting_dog")
        imageHeader.contentMode = .scaleAspectFit
        imageFooter.contentMode = .scaleAspectFit
        imageFooter.image = UIImage(named: "image-city")
        
        viewForm.backgroundColor = .white
        typeForm.text = "Login"
        fieldEmail.placeholder = "Email"
        fieldPassword.placeholder = "Senha"
        sublimeFieldEmail.backgroundColor = .black
        sublimeFieldPassword.backgroundColor = .black
        forgotPasswordButton.backgroundColor = .clear
        forgotPasswordButton.setTitle("Esqueceu a senha?", for: .normal)
        forgotPasswordButton.setTitleColor(.blue, for: .normal)
        
        signInButton.setTitle("Entrar", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.backgroundColor = .orange
        registeUserButton.setTitleColor(.blue, for: .normal)
        registeUserButton.setTitle("Cadastre-se aqui", for: .normal)
        registeUserButton.backgroundColor = .clear
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
        let widthDevice60Per100 = widthDevice * 0.6
        NSLayoutConstraint.activate([
            imageHeader.widthAnchor.constraint(equalToConstant: widthDevice60Per100),
            imageHeader.heightAnchor.constraint(equalToConstant: widthDevice60Per100),
            imageHeader.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 0),
            imageHeader.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            
            imageFooter.widthAnchor.constraint(equalToConstant: widthDevice),
            imageFooter.heightAnchor.constraint(equalToConstant: widthDevice),
            imageFooter.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor, constant: 0),
            imageFooter.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0),
            
            iconApp.widthAnchor.constraint(equalToConstant: 40),
            iconApp.heightAnchor.constraint(equalToConstant: 40),
            iconApp.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 30),
            iconApp.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            
            nameApp.leadingAnchor.constraint(equalTo: iconApp.trailingAnchor, constant: 5),
            nameApp.centerYAnchor.constraint(equalTo: iconApp.centerYAnchor, constant: 0),
            
            viewForm.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            viewForm.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            viewForm.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30),
            
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            signInButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 70),
            signInButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -70),
            signInButton.topAnchor.constraint(equalTo: viewForm.bottomAnchor, constant: 30),
            
            registeUserButton.heightAnchor.constraint(equalToConstant: 30),
            registeUserButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 55),
            registeUserButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -55),
            registeUserButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 30),
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
            fieldPassword.topAnchor.constraint(equalTo: fieldEmail.bottomAnchor, constant: 20),
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
            sublimeFieldPassword.bottomAnchor.constraint(equalTo: viewForm.bottomAnchor, constant: -60),
            
            forgotPasswordButton.trailingAnchor.constraint(equalTo: viewForm.trailingAnchor, constant: -10),
            forgotPasswordButton.bottomAnchor.constraint(equalTo: viewForm.bottomAnchor, constant: -10)
        ])
    }
}

