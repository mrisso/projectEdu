//
//  Questao+CoreDataProperties.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Questao {

    @NSManaged var pergunta: String?
    @NSManaged var tema: Tema?
    @NSManaged var alternativas: NSSet?

}
