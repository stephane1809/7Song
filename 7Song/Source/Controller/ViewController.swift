//
//  ViewController.swift
//  7Song
//
//  Created by Stephane Girão Linhares on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        APICall.GET()
        
        let manager = FileManager.default
        
        // Criando um directory no Documents do meu computador
        let url = manager.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first
        
        // Criando uma pasta em Documents com o nome FileManagerFolder
        let newFolderUrl = url?.appendingPathComponent("FileManagerFolder")
        do {
            try manager.createDirectory(
                at: newFolderUrl!,
                withIntermediateDirectories: true,
                attributes: [:]
            )
        } catch {
            print(error)
        }
    }
}
