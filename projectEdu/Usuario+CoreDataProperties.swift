//
//  Usuario+CoreDataProperties.swift
//  projectEdu
//
//  Created by Student on 12/20/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Usuario {

    @NSManaged var nome: String?
    @NSManaged var estatisticas: NSSet?

}
