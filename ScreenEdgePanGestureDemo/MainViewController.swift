//
//  MainViewController.swift
//
//  Created by Clemens Henker
//
//  Copyright (c) 2019

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(screenEdgeSwiped))
        edgePan.edges = .left

        view.addGestureRecognizer(edgePan)
    }
    
    @objc func screenEdgeSwiped(_ recognizer: UIScreenEdgePanGestureRecognizer) {
        label.text = "\(label.text ?? "")…"

        if recognizer.state == .recognized {
            label.text = "✔︎"
        }
    }
}
