//
//  Week3Day2Tests.swift
//  Week3Day2Tests
//
//  Created by Brent Fordham on 4/11/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import XCTest
@testable import Week3Day2

class Week3Day2Tests: XCTestCase {
    
    func testNames(){
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = names(students)
        let expected = ["John", "Jon", "Jonah", "Jonas", "Jonathan", "Siouxsie", "Susan", "Susie", "Suzanne"]
        XCTAssertEqual(result, expected)
        
    }
    
    func testAnimalCount() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = animalCount(students)
        let expected = [(name: "John", count: 4), (name: "Jon", count: 3), (name: "Jonah", count: 13), (name: "Jonas", count: 2), (name: "Jonathan", count: 2), (name: "Siouxsie", count: 5), (name: "Susan", count: 4), (name: "Susie", count: 0), (name: "Suzanne", count: 2)]
        for (resultItem, expectedItem) in zip(result, expected) {
            XCTAssertEqual(resultItem.name, expectedItem.name)
            XCTAssertEqual(resultItem.count, expectedItem.count)
        }
        
    }
    
    func testSpoilSport() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = spoilSport(students)
        let expected = ["Susie"]
        XCTAssertEqual(result, expected)
    }
    
    func testFindStudent() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = findStudent(students, .highest)
        let expected = "Jonah"
        XCTAssertEqual(result, expected)

    }
    
    func testFindStudent1() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = findStudent(students, .lowest)
        let expected = "Susie"
        XCTAssertEqual(result, expected)
    }
    
    func testAverageCount() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = averageCount(students)
        let expected = 3
        XCTAssertEqual(result, expected)

    }
    
    func testTestingSortingMethod() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let sorted = testingSortingMethod(students)
        let result = sorted[0]
        let expected: (String, Set<String>) = ("John", [
        "Goat",
        "Elephant",
        "Rabbit",
        "Squid"])

        XCTAssert(result == expected)

    }
    
    func testAllAnimals1() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ]]
        let result = allAnimals1(students)
        let expected: [Set<String>] = [[ "Zebra",
                                         "Porcupine",
                                         "Elephant",
                                         "Rabbit",
                                         "Falcon"],
                                       ["Porcupine",
                                        "Armadillo",
                                        "Opossum",
                                        "Goat"],
                                       [],
                                       ["Zebra",
                                        "Porcupine"]]
        XCTAssertEqual(result, expected)
        
    }
    
    func testAllAnimals2() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ]]
        let result = allAnimals2(students)
        let expected: [String] = [ "Elephant",
                                         "Falcon",
                                         "Porcupine",
                                         "Rabbit",
                                         "Zebra",
                                       "Armadillo",
                                        "Goat",
                                        "Opossum",
                                        "Porcupine",
                                       "Porcupine",
                                        "Zebra"]
        XCTAssertEqual(result, expected)

    }
    
    func testZebraStudents() {
        let students: [String: Set<String>] = [
            "Susan" : [
                "Porcupine",
                "Armadillo",
                "Opossum",
                "Goat",
            ],
            "Suzanne" : [
                "Zebra",
                "Porcupine",
            ],
            "Susie" : [],
            "Siouxsie" : [
                "Zebra",
                "Porcupine",
                "Elephant",
                "Rabbit",
                "Falcon",
            ],
            "John" : [
                "Goat",
                "Elephant",
                "Rabbit",
                "Squid",
            ],
            "Jon" : [
                "Horse",
                "Hippopotamus",
                "Butterfly"
            ],
            "Jonah" : ["Whale",
                       "Lion",
                       "Zebra",
                       "Dog",
                       "Zebra",
                       "Porcupine",
                       "Armadillo",
                       "Opossum",
                       "Goat",
                       "Elephant",
                       "Rabbit",
                       "Squid",
                       "Falcon",
                       "Octopus",],
            "Jonathan" : [
                "Snail",
                "Cobra"
            ],
            "Jonas" : [
                "Cheetah",
                "Tiger"
            ],
            ]
        let result = zebraStudents(students)
        let expected = ["Jonah", "Siouxsie", "Suzanne"]
        XCTAssertEqual(result, expected)
    }
    
    func testMyFilter() {
        func filter(_ input: String) -> Bool {
            return input.hasPrefix("a")
        }
        let arrayToFilter = ["apple", "orange", "apricot", "blueberry"]
        let result = myFilter(input: arrayToFilter, filter: filter)
        let expected: [Any] = ["apple", "apricot"]
        XCTAssert(result == expected)
    }
}
