//
//  QuestoesDAO.swift
//  projectEdu
//
//  Created by Student on 12/20/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class QuestoesDAO {

    static func inserir(questao: Questao) {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        context.insertObject(questao)
        
        do {
            try context.save()
            print("Questão inserida.")
            
        } catch let erro as NSError {
            print(erro)
        }
    }
    
    static func buscarTodos() -> [Questao] {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var questoesDeUmTema: [Questao] = [Questao]()
        
        let request: NSFetchRequest = NSFetchRequest(entityName: "Questao")
        request.sortDescriptors = [NSSortDescriptor.init(key: "pergunta", ascending: true)]
        
        do {
            try questoesDeUmTema = context.executeFetchRequest(request) as! [Questao]
            print("Total de questões = ", questoesDeUmTema.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return questoesDeUmTema
    }

}