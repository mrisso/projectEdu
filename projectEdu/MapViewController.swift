//
//  MapViewController.swift
//  projectEdu
//
//  Created by Student on 12/20/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    var listaTemas : [Tema]?
    
    @IBOutlet weak var temaButtonAOutlet: UIButton!
    @IBOutlet weak var temaButtonBOutlet: UIButton!
    @IBOutlet weak var temaButtonCOutlet: UIButton!
    @IBOutlet weak var temaButtonDOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaTemas = TemaDAO.buscarTodos()
        
        if listaTemas?.count != 0 {
            temaButtonAOutlet.setTitle(listaTemas![0].nome, forState: .Normal)
            temaButtonBOutlet.setTitle(listaTemas![1].nome, forState: .Normal)
            temaButtonCOutlet.setTitle(listaTemas![2].nome, forState: .Normal)
            temaButtonDOutlet.setTitle(listaTemas![3].nome, forState: .Normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "explanationViewSegue" {
            if let novaView = segue.destinationViewController as? ExplanationViewController {
                if let btn = sender as? UIButton {
                    switch btn.tag {
                        
                    case 0:
                        if listaTemas?.count != 0{
                            novaView.tema = listaTemas![0]
                        }
                        
                    case 1:
                        if listaTemas?.count != 0{
                            novaView.tema = listaTemas![1]
                        }
                        
                    case 2:
                        if listaTemas?.count != 0{
                            novaView.tema = listaTemas![2]
                        }
                        
                    case 3:
                        if listaTemas?.count != 0{
                            novaView.tema = listaTemas![3]
                        }
                        
                    default:
                        novaView.tema = nil
                    }
                }
            }
        }
    }
}