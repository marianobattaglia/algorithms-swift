import Foundation

// MARK: - Util Methods
func generateRandomArray(size: Int, maxValue: UInt32) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    var result = [Int](repeating: 0, count: size)
    for i in 0..<size {
        result[i] = Int(arc4random_uniform(maxValue))
    }
    return result
}

// MARK: - Examples
/*
let array100 = generateRandomArray(size: 100, maxValue: UInt32.max)
var execTime = BenchTimer.measureBlock {
    _ = sum(array: array100)
}
print("Average execution time for sum array100: \(execTime)")

let array1000 = generateRandomArray(size: 1000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    _ = sum(array: array1000)
}
print("Average execution time for sum array100: \(execTime)")

let array10000 = generateRandomArray(size: 10000, maxValue: UInt32.max)
execTime = BenchTimer.measureBlock {
    _ = sum(array: array10000)
}
print("Average execution time for sum array100: \(execTime)")
*/
