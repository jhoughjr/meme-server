//
//  OCRJob.swift
//  vapor-auth-template
//
//  Created by Jimmy Hough Jr on 8/13/24.
//

import Vapor
import Queues

struct OCRPayload: Codable {
    let image: ByteBuffer
    let userID: UUID
    
    init(_ image: ByteBuffer, for user: UUID) {
        self.image = image
        self.userID = user
    }
}

struct OCRJob: Job {
    typealias Payload = OCRPayload
    
    func dequeue(_ context: QueueContext, _ payload: OCRPayload) -> EventLoopFuture<Void> {
       // directories per user id for images
       // call tesseract cli
       // get results
       // feed into db
        return context.eventLoop.makeSucceededVoidFuture()
    }
}

