//
//  TemaDAO.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class TemaDAO
{
    static func buscarTema(tema: String) -> Tema?
    {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        var listaTemas = [Tema]()
        let request = NSFetchRequest(entityName: "Tema")
        
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do{
            listaTemas = try context.executeFetchRequest(request) as! [Tema]
            print("Total de Temas cadastrados = ", listaTemas.count)
        } catch let erro as NSError {
            print(erro)
        }
        
        for tema in listaTemas {
            if tema.nome == tema{
                return tema
            }
        }
        
        return nil
    }
}