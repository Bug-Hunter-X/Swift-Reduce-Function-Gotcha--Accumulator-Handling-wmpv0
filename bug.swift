let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

let strings = ["a", "b", "c"]

let concatenatedString = strings.reduce("", +)

print(concatenatedString) // Output: abc

This works fine for numbers and strings, but what if you want to perform a more complex operation during the reduction process?

Here's where a common mistake occurs. Let's say you want to calculate the sum of the squares of the numbers:

let numbers = [1, 2, 3, 4, 5]

let sumOfSquares = numbers.reduce(0, { $0 + $1 * $1 })

print(sumOfSquares) // Output: 55

This works because the closure takes two arguments, a running total ($0) and the current element ($1). However, this isn't always obvious and you might forget the running total or the current element

Instead of using the shorthand '+' operator which is implicitly passing the two parameters into the closure you can explicitly write out the closure for better understanding:

let sumOfSquaresExplicit = numbers.reduce(0) { (result, number) in
    return result + number * number
}

print(sumOfSquaresExplicit) // Output: 55