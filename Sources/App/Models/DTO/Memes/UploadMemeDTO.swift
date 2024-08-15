//
//  MemeInfoDTO.swift
//  vapor-auth-template
//
//  Created by Jimmy Hough Jr on 8/13/24.
//

import Vapor

struct UploadMemeDTO: Content {
    let id: UUID?
    let url: String
    let text: String
    
    init(id: UUID? = nil,
         url: String,
         text: String) {
        self.id = id
        self.url = url
        self.text = text
    }
    
}


