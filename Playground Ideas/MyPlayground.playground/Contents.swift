//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

1+1

var 😂  = 100

print(😂)


var 🌝  = -50

😂 + 🌝

var ent1:String? = nil
var ent2 = ent1

if ent2 == nil {
    print("fick")
}

var str1 = "fwqd"
var str2 = "Dwqd"
var str3 :String?

var strs = [str1,str2,str3]


class person : NSObject{
    var name: String
    var age: Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    func gettingOld() {
        self.age += 1
    }
    
    func printInform() {
        print("\(name) : \(age)")
    }
    
    deinit {
    }
}

var p1 = person("tom",20)
var p2 = person("dick",12)
var p3 : person?

var ps = [p1,p2,p3]
var temp = ps[0]
temp!.gettingOld()
temp!.printInform()
ps
var nt = ps[1]
ps[1] = nil
p2.printInform()







