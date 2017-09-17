//
//  Handbook+PlaygroundIdeas.swift
//  Playground Ideas
//
//  Created by Apple on 17/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import Foundation

extension PlaygroundIdeas {
    public class HandbookAPI : NSObject {
        static public func requestAllHandbooks(finished: @escaping (Data?, URLResponse?, Error?) -> Void) {
            if let apiURI = PlaygroundIdeas.getAPIURI(api: "requestAllHandbooks") {
                let request = PlaygroundIdeas.makeHTTPURLRequest(method: .GET, url: apiURI, body: nil)
                
                URLSession.shared.dataTask(with: request) {
                    (data, response, error) in
                    finished(data, response, error)
                }.resume()
            }
        }
    }
}
