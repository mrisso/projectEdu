//
//  Alternativa.swift
//  projectEdu
//
//  Created by Student on 12/19/16.
//  Copyright © 2016 HackEdu. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Alternativa: NSManagedObject {

    convenience init () {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let entity = NSEntityDescription.entityForName("Alternativa", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
    }

}
