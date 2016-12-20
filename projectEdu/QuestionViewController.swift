//
//  QuestionViewController.swift
//  projectEdu
//
//  Created by Student on 12/20/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var tema: Tema?
    
    @IBOutlet weak var perguntaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}