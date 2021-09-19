//
//  InicioViewController.swift
//  perguntasRespostas
//
//  Created by Leonardo Cunha on 18/09/21.
//  Copyright © 2021 Leonardo Cunha. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {
    
    // MARKS : - Outlets / Actions

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func buttonStart(_ sender: Any) {
        let viewController = QuestionsViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    // MARKS : - Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Perguntas e respostas"
    
        print("Responda 10 perguntas e veja sua pontuação no fim!")
       
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 98.0/255.0, green: 115.0/255.0, blue: 255.0/255.0, alpha: 1)
        navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        

    }
    override func viewWillAppear(_ animated: Bool) {
        
        if nota.shared.showStartScreen {
            
            buttonOutlet.setTitle("Start!", for: UIControl.State.normal)
            scoreLabel.text = "Responda 10 perguntas e veja sua pontuação no fim!"
            nota.shared.scoreAtual = 0
            
        }else {
            buttonOutlet.setTitle("tentar novamente", for: UIControl.State.normal)
            scoreLabel.text = "\(nota.shared.scoreAtual)/10"
            nota.shared.scoreAtual = 0
        }
    }
}
