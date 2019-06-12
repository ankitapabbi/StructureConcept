//
//  main.swift
//  StructureConcept
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
var a = [10,20,30,40,50,60,70,80,90,100]
//print(a[0])
for  x in a {
    print(x)
}
//a[10] = 110 // invalid
a.append(110)
a.append(120)
print(a[10])
print("-----------------")
print(a.capacity)
print(a.count)

if a.isEmpty{
    print("Array is empty")
}else{
    print("Array contains some elements")
}
var x = Int()
print(x)

//let otherCountries = ["Pak","Russia","UK"]
var country:[String]!
country = [String]() // this is how we initialize array
//country += otherCountries
country = country + ["Pak","Russia","UK"]
//b!.append("India")
//b!.append("Canada")
//b!.append("USA")

if var c = country{
    
    c.append("India")
    c.append("Canada")
    c.append("USA")
    print("Np. Of Counties: \(c.count)")
}

print("Np. Of Counties: \(country!.count)")



//func sortArray(arr: [Int]) -> [Int] {
//  var max = arr.count - 1
//
//    for i in 0 ... max{
//        var key = arr[i]
//        var keyj = i
//
//        for j in i+1 ... max {
//            if arr[j] < key {
//                key = arr[j]
//                keyj = j
//            }
//        arr[keyj] = arr[i]
//        arr[i] = key
//        }
//    }
//
//
//    }


// Recursion Array Example
func printN(n: Int){
    if(n==0){
        return
    }else{
        printN(n: n - 1)
        print(n)
    }
}
print("************************")

printN(n: 10)

// Recursion Array Example
func sumN(n: Int) -> Int{
    var sum = 0
    if(n==0){
        return 0
    }else{
        sum = sum + sumN(n: n - 1)
        print(n)
    }
    return sum
}
print("************************")

print("SUM : \(sumN(n: 10))")

func printTheReverseArray(arr: [String], index: Int){
    if arr.isEmpty{
        return
    }else{
        if index == -1 {
            return
        }else{
            print(arr[index])
            printTheReverseArray(arr: arr, index: index-1)
        }
    }
    
    
}
printTheReverseArray(arr: country, index: country.count-1)

print("-------------")
var abc = [1,2,3,4,5,6,7,8]

func reverseEx(abc: [Int], index: Int){
    if abc.isEmpty{
        return
    }else{
        if index == -1{
            return
        }else{
        print(abc[index])
        reverseEx(abc: abc, index: index-1)
        }
    }
}

reverseEx(abc: abc, index: abc.count-1)

//func swapEx(abc: [Int], start: Int, end: Int){
//    if abc.isEmpty {
//        return
//    }else{
//        if start > end{
//            return
//        }else{
//            swapEx(abc: &abc, start: start + 1, end: end - 1 )
//        }
//    }
//}
//swapEx(abc: &abc, start: 0, end: abc.count-1)

var countryDictionary = ["key" : "value",
                         "IND" : "India",
                         "CAD" : "Canada",
                         "USA" : "United States of America"
                        ]
print(countryDictionary)

print(countryDictionary["USA"])
print(countryDictionary["USA"]!) // use ! bcoz may be we dont have a value having a perticular key and to secure from crash
print(countryDictionary["PAK"] ?? "Key not exist") // other way

if let c = countryDictionary["PAK"]{ // this is the safest method in order to safe our code from the crash
    print(c)
}

for c in countryDictionary
{
    print(c)
    print(c.key, c.value)
}
countryDictionary["PAK"] = "Pakistan"
countryDictionary["PAK"] = "New Pakistan"
for (k, v) in countryDictionary{
    print (k, v)
}

var newC = Dictionary<String, Int>()

var newArray : Array<Int>

var mySet = Set<String>()

mySet.insert("India")
mySet.insert("Canada")
mySet.insert("USA")
mySet.insert("India")

print("Set dont Repeat values : ")
print(mySet)
mySet.insert("Russia")

//for x in mySet{
//    print(mySet[x])
//}

var mySet2 = Set<String>()

mySet2.insert("India")
mySet2.insert("Pakistan")
mySet2.insert("Nepal")


print("Ser operations below:")

let interSet = mySet.intersection(mySet2)
print("Intersection of sets ",interSet)

let unionSet = mySet.union(mySet2)
print("Union of sets ",unionSet)

let isDisjointSet = mySet.isDisjoint(with: mySet2)
print("is Disjoint Sets ", isDisjointSet)

let minusSet = mySet.subtracting(mySet2)
print("Discard the common in A ",minusSet)

let symDiffSet = mySet.symmetricDifference(mySet2)
print("Sym ",symDiffSet)

print("--------------------------------------------------------------------")
//let ss = [0 : 100, 1 : 200, 2 : 300]
//print(ss)

// use of Any Keyword
var ss = Dictionary<String, Any>()

ss["int"] = 100
ss["string"] = "Ankita"
ss["dict"] = ["k" : 100 ,"v" : "200", "s" : 0.0]
ss["tuple"] = (100,200)

for item in ss{
    if item.value is Int{
        print("I am Integer : \(item)")
    }
    else if item.value is String{
        print("I am String : \(item)")
    }
    else if item.value is Dictionary<String,Any>{
        print("I am Dictionary : \(item)")
    }
    else if item.value is (Int,Int){
        print("I am Tuple : \(item)")
    }
    
}
