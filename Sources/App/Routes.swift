import Vapor

final class Routes: RouteCollection {
    func build(_ builder: RouteBuilder) throws {
        
        builder.get("json") { req in
            
            // JSON is a StructuredDataWrapper with a
            // mutating function that takes multiple combinations of
            // tuple or tuple dictionary
            
            var json = JSON()
            try json.set("name", "Bill")
            try json.set("age", 30)
            try json.set("Homes", ["2334 Crescent Lake Dr." : "$400,000",
                                   "597 Elmwood Cir" : "298,000"])
            
            //try json.set("test", "list","test", "list","test", "list","test", "list","test", "list","test", "list","test", "list")
            
            return json
        }
 
        builder.get("plaintext") { req in
            return "Hello, world!"
        }
        
        // response to requests to /info domain
        // with a description of the request
        builder.get("info") { req in
            
            // req has various properties that can be used
            return req.description
            //return req.
        }
        
        
    }
        
}


extension Routes: EmptyInitializable { }  // Init Routes without initializers
