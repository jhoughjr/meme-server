//
//  Meme.swift
//  vapor-auth-template
//
//  Created by Jimmy Hough Jr on 8/13/24.
//

import Vapor
import Fluent
final class MemeInfo: Model ,@unchecked Sendable {
    static let schema = "meme_infos"
    
    @ID(key: .id)
    var id: UUID?
    
    @Parent(key: "user_id")
    var user: User
    
    @Field(key: "url")
    var url: String
    
    @Field(key: "text")
    var text: String
    
    init() {}
    
    init(
        id: UUID? = nil,
        userID: UUID,
        url: String,
        text: String
    ) {
        self.id = id
        self.$user.id = userID
        self.url = url
        self.text = text
    }
}
