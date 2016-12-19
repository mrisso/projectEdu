//
//  Tema.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Tema: NSManagedObject {

    convenience init () {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Tema", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
    }
    
    func getQuestoes(fromTema: Tema) -> [Questao]
    {
        return (fromTema.questoes?.allObjects as? [Questao])!
    }
}
