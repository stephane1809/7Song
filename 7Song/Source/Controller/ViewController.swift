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
        
        let url = manager.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first
        
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
