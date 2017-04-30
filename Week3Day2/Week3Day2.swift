//
//  Week3Day2.swift
//  Week3Day2
//
//  Created by Brent Fordham on 4/11/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

func names(_ input: [String: Set<String>]) -> [String] {
    let nameArray = input.keys.map({element -> String in
        return element})
    return nameArray.sorted()
}

func animalCount(_ input: [String: Set<String>]) -> [(name: String, count: Int)] {
    let animalCountArray = input.map({(key, value) -> (name: String, count: Int) in
        return (name: key, count: value.count)})
    return animalCountArray.sorted(by: { (lhs, rhs) in lhs < rhs })
}

func spoilSport(_ input: [String: Set<String>]) -> [String] {
    let spoilSportDictionary = input.filter({(key, value) -> Bool in
        return value.isEmpty
    })
    let spoilSportArray = spoilSportDictionary.map({element -> String in
        return element.key})
    return spoilSportArray
}

enum WhichStudent {
    case highest
    case lowest
}

func findStudent(_ input: [String: Set<String>], _ highOrLow: WhichStudent) -> String {
    let animalCountArray = input.map({(key, value) -> (name: String, count: Int) in
        return (name: key, count: value.count)})
    let first = animalCountArray.first!
    let highCountArray = animalCountArray.reduce(first) {(accum, element) in
        if element.count > accum.count {
            return element
        } else {
            return accum
        }
    }
    let lowCountArray = animalCountArray.reduce(first) {(accum, element) in
        if element.count < accum.count {
            return element
        } else {
            return accum
        }
    }
    if highOrLow == .highest {
        return highCountArray.name
    } else {
        return lowCountArray.name
    }
}

func averageCount(_ input: [String: Set<String>]) -> Int {
    let animalCountArray = input.map({(key, value) -> (name: String, count: Int) in
        return (name: key, count: value.count)})
    let averageCount = animalCountArray.reduce(0) {(accumulator, element) in
        return accumulator + element.count}
    return averageCount / input.keys.count
}

func testingSortingMethod(_ input: [String: Set<String>]) -> [(String, Set<String>)] {
    let sortedDictionary = input.sorted(by: {(tup1: (key: String, value: Set<String>), tup2: (key: String, value: Set<String>)) -> Bool in
        return tup1.key < tup2.key})
    return sortedDictionary
}

func allAnimals1(_ input: [String: Set<String>]) -> [Set<String>] {
    let sortedDictionary = input.sorted(by: {(tup1: (key: String, value: Set<String>), tup2: (key: String, value: Set<String>)) -> Bool in
        return tup1.key < tup2.key})
    let output = sortedDictionary.map({(key: String, value: Set<String>) -> Set<String> in
    return value})
    return output
}

func allAnimals2(_ input: [String: Set<String>]) -> [String] {
    let arrayOfStrings = allAnimals1(input)
    var arrayOfSortedStrings: [[String]] = [[]]
    for element in arrayOfStrings {
        arrayOfSortedStrings.append(element.sorted())
    }
    let output = arrayOfSortedStrings.flatMap({$0})
    return output
}

func zebraStudents(_ input: [String: Set<String>]) -> [String] {
    let studentsWithZebra = input.filter({(key: String, value: Set<String>) -> Bool in
    return value.contains("Zebra")})
    let listOfStudents = studentsWithZebra.map({(key, value) -> String in
    return key})
    return listOfStudents
}

func myFilter(input: [String], filter: (String) -> Bool) -> [Any] {
    let output = input.reduce([]) {(accumulator, element) in
        var reducedArray = accumulator
        if filter(element) {
            reducedArray.append(element)
        }
        return reducedArray
    }
    return output
}




