//
//  ViewController.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enunciado: UILabel!
    @IBOutlet weak var alternativa1: UILabel!
    @IBOutlet weak var alternativa2: UILabel!
    @IBOutlet weak var alternativa3: UILabel!
    
    var quiz: BancoQuestoes?
    //var alternativasDaQuestao: [Alternativa]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quiz = BancoQuestoes()
        
        if quiz != nil {
            enunciado.text = quiz?.questao1?.pergunta
            alternativa1.text = "1 aqui"
            alternativa2.text = "2 aqui"
            alternativa3.text = "3 aqui"
        }
    }

}

