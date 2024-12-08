let numbers = [1, 2, 3, 4, 5]

// Incorrect usage: Missing accumulator handling in the closure
// let sumOfSquaresIncorrect = numbers.reduce(0, { $0 + $1 * $1 }) //This will lead to incorrect output

// Correct usage: Explicit accumulator and element handling
let sumOfSquaresCorrect = numbers.reduce(0) { (result, number) in
    return result + number * number
}

print(sumOfSquaresCorrect) // Output: 55

//Another example with strings
let strings = ["a", "b", "c", "d"]

//Incorrect
//let concatenated = strings.reduce("", {$0 + $1 + "-"}) //This will lead to incorrect output

//Correct
let concatenatedCorrect = strings.reduce("") { (result, str) in
  return result + str + "-"
}
print(concatenatedCorrect) // Output: a-b-c-d-