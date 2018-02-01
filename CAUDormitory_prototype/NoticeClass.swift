//
//  NoticeClass.swift
//  CAUDormitory_prototype
//
//  Created by CAUADC on 2018. 2. 1..
//  Copyright © 2018년 CAUADC. All rights reserved.
//

import Foundation
import UIKit

class Notice {
    var title:String
    var date:String
    var images:[UIImage] = []
    
    init(title:String, date:String) {
        self.title = title
        self.date = date
    }
    
}
