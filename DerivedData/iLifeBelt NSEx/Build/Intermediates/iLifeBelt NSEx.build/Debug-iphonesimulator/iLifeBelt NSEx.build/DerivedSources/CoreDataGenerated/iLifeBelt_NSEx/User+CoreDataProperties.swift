//
//  User+CoreDataProperties.swift
//  
//
//  Created by Community One on 2/12/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var email: String?
    @NSManaged public var result: String?
    @NSManaged public var username: String?

}
