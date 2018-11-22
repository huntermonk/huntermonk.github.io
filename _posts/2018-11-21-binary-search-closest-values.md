---
layout: post
title:  "Binary search, but it returns the closest value."
---

To review my interviewing performance, I'm going to record myself while I work through typical engineering questions.

Today, I work on a version of binary search that finds the nearest value to the target.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Q1ZaafjZzig" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The question:

>*Given a sorted bit array of integers, and a target value, find the number in the array that is closest to the target.*
>
>**Parameters**
>Input: arr {Array of Integers}
>Input: target {Integer}
>Output: {Integer}
>
>**Constraints**
>If there are two numbers tied for the closest value, return the lowest value.
>
>Time: O(logN)
>Space: O(1)
>
>**Examples**
>
>`[1, 2, 3, 5, 5, 7, 9, 10, 11], 6 --> 5`
>
>`[1, 2, 3], 8 --> 3`
>
>`[1, 10, 22, 59, 67, 72, 100], 70 --> 72`
 
 My answer, unedited from the video:

 ``` swift
 func closestValue(_ arr: [Int], _ target: Int) -> Int {
    var leftPointer = 0
    var rightPointer = arr.count - 1

    while leftPointer < rightPointer {
        let middleIndex = (leftPointer + rightPointer) / 2
        let middleValue = arr[middleIndex]

        if middleValue == target {
            return middleValue
        }

        guard middleIndex != 0 else {
            return arr[0]
        }

        let leftIndex = middleIndex - 1
        let leftValue = arr[leftIndex]

        if leftValue <= target && middleValue >= target {
            let leftDistance = abs(leftValue - target)
            let rightDistance = abs(middleValue - target)

            if leftDistance <= rightDistance {
                return leftValue
            } else {
                return middleValue
            }
        }

        if middleValue <= target {
            leftPointer = middleIndex + 1
        } else {
            rightPointer = middleIndex
        }
    }

    guard let first = arr.first, let last = arr.last else {
        fatalError()
    }

    if target <= first {
        return first
    } else if target >= last {
        return last
    } else {
        fatalError()
    }
}
```

