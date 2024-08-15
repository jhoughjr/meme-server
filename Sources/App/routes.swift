import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.logger.info("Conifuring routes...")
    
    app.get("") { req in
        req.view.render("index", ["title": "Memes"])
    }
    
    app.get("login") { req in
        req.view.render("login", ["title": "Login"])
    }
    
    app.get("signup") { req in
        req.view.render("signup", ["title": "Sign Up"])
    }
    
    app.group("api") { api in
        // Authentication
        try! api.register(collection: AuthenticationController())
    }
}
