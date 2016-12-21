//
//  Questao.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Questao: NSManagedObject {

    convenience init () {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Questao", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
    }
    
    func getAlternativas() -> [Alternativa]
    {
        return (alternativas?.allObjects as? [Alternativa])!
    }

}

class BancoQuestoes {
    var questao1: Questao?
    var questao2: Questao?
    var questao3: Questao?
    
    init() {
        // QUESTAO 1
        self.questao1 = Questao()
        self.questao1?.pergunta = "Pergunta da questao 1"
        
        let categoria = Tema()
        categoria.nome = "Logica"
        questao1?.tema = categoria
        
        let alternativaA1 = Alternativa()
        alternativaA1.alternativa = "Alternativa A da questao 1"
        alternativaA1.questao = questao1
        let alternativaB1 = Alternativa()
        alternativaB1.alternativa = "Alternativa B da questao 1"
        alternativaB1.questao = questao1
        let alternativaC1 = Alternativa()
        alternativaC1.alternativa = "Alternativa C da questao 1"
        alternativaC1.questao = questao1
        
        QuestoesDAO.inserir(self.questao1!)
        
        //QUESTAO 2
        self.questao2 = Questao()
        self.questao2?.pergunta = "Pergunta da questao 2"
        
        questao2?.tema = categoria
        
        let alternativaA = Alternativa()
        alternativaA.alternativa = "Alternativa A da questao 2"
        alternativaA.questao = questao2
        
        QuestoesDAO.inserir(self.questao2!)
        
        // QUESTAO 3
        self.questao3 = Questao()
        self.questao3?.pergunta = "Pergunta da questao 3"
        
        let categoria2 = Tema()
        categoria2.nome = "Geometria"
        questao3?.tema = categoria2
        
        let alternativaB = Alternativa()
        alternativaB.alternativa = "Alternativa B da questao 3"
        alternativaB.questao = questao3
        
        QuestoesDAO.inserir(self.questao3!)
    }
}
