//
//  ViewController.swift
//  7Song
//
//  Created by Stephane Girão Linhares on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Criando uma contante para receber a imagem background 
    private let backgroundImage: UIImageView = {
        let background = UIImageView(frame: .zero)
        background.translatesAutoresizingMaskIntoConstraints = false
        background.image = UIImage(named: "image1")
        background.contentMode = .scaleAspectFill

        return background
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        APICall.GET()
    }
    
    func setupView() {
//        view.backgroundColor = .systemBackground
//        navigationItem.hidesBackButton = true
    }
    
    func setupHierarchy() {
        view.addSubview(backgroundImage)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
