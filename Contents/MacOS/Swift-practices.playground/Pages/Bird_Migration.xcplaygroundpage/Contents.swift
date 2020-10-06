//: [Previous](@previous)

import Foundation

let sightings: [Int] = [1, 1, 2, 3, 4, 2, 1, 1, 3, 2, 4, 2]
var counts: [Int: Int] = [:]

for item in sightings {
    counts[item] = (counts[item] ?? 0) + 1
}

print(counts)
let birdsSeen = counts.max { a, b in a.value < b.value }

print(counts.values)

var greaterSightings = counts.values.max()

print(greaterSightings!) // We can unwrap the optional
greaterSightings = greaterSightings!

let greaterBirdsSightingsResult = counts.filter { key, value in
    return value == greaterSightings
}
print(greaterBirdsSightingsResult.keys.min()!)


//: [Next](@next)
