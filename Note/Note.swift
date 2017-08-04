//
//  Note.swift
//  Note
//
//  Created by King Justin on 7/28/17.
//  Copyright © 2017 toBeDetermined. All rights reserved.
//

import Foundation
import RealmSwift

class Note : Object {
    
    dynamic var title = ""
    dynamic var modificationTime = NSDate()
    dynamic var content = ""
    
}
