import UIKit
/*
//1

func createCollectionWithElements(elementsCount: Int) -> [Int] {
    var a = Array(repeating: 0, count: elementsCount)
    a [0] = 1
    a [elementsCount - 1] = 1
    return a
}

print(createCollectionWithElements(elementsCount: 5))





//2

func createCollectionWithZeroesAndOnes(elementsCount: Int) -> [Int] {
    var a = Array(repeating: 0, count: elementsCount)
    for n in 0...elementsCount - 1 {
        if n % 2 == 0 {
            a[n] = 1
        }
    }
    return a
}

print(createCollectionWithZeroesAndOnes(elementsCount: 10))





//3

func createCollectionWithOddNumbers(elementsCount: Int) -> [Int] {
    var a = Array(repeating: 1, count: elementsCount)
    
    for n in 0...elementsCount - 1{
        a[n] = n * 2 + 1
    }
    
    return a
}

print(createCollectionWithOddNumbers(elementsCount: 20))


//4

func createArrayWithDynamicProgression(elements: Int, number: Int) -> [Int] {
    var a = Array(repeating: number, count: elements)
    
    for n in 1...elements - 1 {
        a[n] = number + a[n - 1]
    }
    return a
}


print(createArrayWithDynamicProgression(elements: 100, number: 3))



// 5

func createCollectionWithEvenNumbers(elementsCount: Int) -> [Int] {
    var a = Array(repeating: 1, count: elementsCount)
    
    for n in 0...elementsCount - 1{
        a[n] = n * 2 + 2
    }
    
    return a
}

print(createCollectionWithEvenNumbers(elementsCount: 20))


//6

func createCollectionWithNumbersDevidibleBy3(maxNumber: Int) -> [Int] {
    var a = [Int]()
    var number = (maxNumber - maxNumber) - maxNumber
    for n in number...0 {
        if n % 3 == 0 {
            a.append((n - n) - n )
        }
    }
    a.sorted()
    return a
}

print(createCollectionWithNumbersDevidibleBy3(maxNumber: 1000))



//7

func createCollectionWithFibonacciNumbers(elements: Int) -> [Int] {
    
    var a = [0,1]
    while a.count < elements {
        a.append(a[a.count - 2] + a[a.count - 1])
        
    }
    
    return a
}

print(createCollectionWithFibonacciNumbers(elements: 10))

*/
//8
/*
func createCollectionWithRandomNumbers(elements: Int) -> [Int] {
    
    var a = Array(repeating: 0, count: elements)
    
    func getRandomNumber() -> Int {
        let randomNumber = Int.random(in: 0 ... elements)
        return randomNumber
    }
    
    for n in 0...elements - 1 {
        a[n] = getRandomNumber()
        
    }
    return a
}

print(createCollectionWithRandomNumbers(elements: 100))


//9

func createCollectionWithSquaredNumbers(elements: Int) -> [Int] {
    
    var a = Array(repeating: 1, count: elements)
    for n in 0...elements - 1 {
        a[n] = n * n
    }
    
    
    return a
}

print(createCollectionWithSquaredNumbers(elements: 25))

 */

//10

func createCollectionWithOnesOnOdd(elements: Int) -> [Int] {
    
    var a = Array(repeating: 0, count: elements)
    for n in 0...elements - 1 {
        if n % 2 == 0 {
            a[n] = 1
        } else {
            a[n] = n % 5
        }
    }
    
    
    return a
}

print(createCollectionWithOnesOnOdd(elements: 100))
 

