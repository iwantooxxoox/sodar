//
//  Event.swift
//  SD
//
//  Created by Mustang Design on 2015/9/21.
//  Copyright (c) 2015年 teamecodenect. All rights reserved.
//

import Foundation

class Data {
    class entry
    {
        let userName:String
        let eventTitle:String
        let eventImageName:String
        
        init(userName: String, eventTitle:String, eventImageName:String)
        {
            self.userName = userName
            self.eventTitle = eventTitle
            self.eventImageName = eventImageName
        }
    }
    
    let events = [
        entry(userName: "Michael Diamond", eventTitle: "Birthday Party", eventImageName: "party.png"),
        entry(userName: "Marvin Coblin", eventTitle: "Exhibition", eventImageName: "exhibition.png")
    ]
}