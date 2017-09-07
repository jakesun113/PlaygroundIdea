//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

//func logout() {
//    var request = URLRequest(url: URL(string: "http://localhost/wordpress/wp-json/api/v1/logout")!)
//    request.httpMethod = "POST"
//    let task = URLSession.shared.dataTask(with: request)
//    {
//        data, response, error in
//        print(data)
//        print(response)
//        print(error)
//        
//        let responseString = String(data: data!,
//                                    encoding: String.Encoding.utf8)
//        print("content:" + responseString!)
//    }
//    
//    task.resume()
//}

func login() {
    var request = URLRequest(url: URL(string: "http://localhost/wordpress/wp-json/api/v1/login")!)
    request.httpMethod = "POST"
    request.httpBody = "username=haoyuant94718@gmail.com&password=penis123".data(using: .utf8)
    let task = URLSession.shared.dataTask(with: request)
    {
        data, response, error in
        print(data)
        print(response)
        print(error)
        
        let responseString = String(data: data!,
                                    encoding: String.Encoding.utf8)
        print("content:" + responseString!)
    }
    
    task.resume()
}

//func test() {
//    var request = URLRequest(url: URL(string: "http://localhost/wordpress/wp-json/api/v1/test")!)
//    request.httpMethod = "GET"
//    let task = URLSession.shared.dataTask(with: request)
//    {
//        data, response, error in
//        print(data)
//        print(response)
//        print(error)
//        
//        let responseString = String(data: data!,
//                                    encoding: String.Encoding.utf8)
//        print("content:" + responseString!)
//    }
//    
//    task.resume()
//}

//logout()
login()
//test()



