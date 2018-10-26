---
layout: post
title:  "Property observers in methods."
---

I'm currently prepping for interviews with a few companies. That means learning how to do things like, "write a method for generating all permutations of a string".

To help with debugging, I discovered that you can add property observers to variables _inside_ methods.

``` swift
func didSet() {
    var array: [Int] = [] {
        didSet {
            print(array)
        }
    }

    for i in 0...3 {
        array.append(i)
    }
}

didSet()
//prints:
//[0]
//[0, 1]
//[0, 1, 2]
//[0, 1, 2, 3]
```

That means `get/set` and `willSet` works too, of course.
