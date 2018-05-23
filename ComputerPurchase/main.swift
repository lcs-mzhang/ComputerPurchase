//
//  main.swift
//  ComputerPurchase
//

import Foundation

func unwrap(variable: Substring) -> Int {
    guard let integerVariable = Int(variable) else {
        print("Unwrap failed! If I didn't make a fancy function thing, XCode would have crashed!")
        return 0
    }
    return integerVariable
}


// INPUT
// Global variable, tracks how many computers we are going to collect specs for

var expectedSpecs = 0

while true {
    print("How many specs will be provided?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput < 1 || integerInput > 10 {
        continue
    }
    expectedSpecs = integerInput
    break
}

// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var highestName = ""

// Collect the list of computer specs here
for counter in 1...expectedSpecs {
    //these computers must from the stone age if they're running on processors with speed measured in megahertz
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // What was provided?
    let splitInput = givenInput.split(separator: " ")
    let name = String(splitInput[0])
    let RAM = unwrap(variable: splitInput[1])
    let CPU = unwrap(variable: splitInput[2])
    let diskSpace = unwrap(variable: splitInput[3])
    
    let specFormula = (2*RAM) + (3*CPU) + diskSpace
    var highest = 0
    if specFormula > highest {
        highest = specFormula
        highestName = name
    }
    
    // Implement the rest of your logic here...
    //no thanks
}

print("The best computer for you is \(highestName).")
