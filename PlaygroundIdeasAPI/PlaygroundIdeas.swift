//
//  PlaygroundIdeas
//  Playground Ideas
//
//  Created by Apple on 01/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import Foundation

public class PlaygroundIdeas: NSObject {
    static let baseAPIDomainURL = "http://localhost/wordpress/wp-json/api/v1/"
    
    private override init() {
        super.init()
    }
    
    static func getAPIURI(api: String) -> URL?{
        return URL(string: PlaygroundIdeas.baseAPIDomainURL + api)
    }
    
    static func makeHTTPURLRequest(method: HTTPMethods, url: URL, body: String?) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        request.httpBody = body != nil ? body!.data(using: .utf8) : nil
        
        return request
    }
}
