---
layout: post
title:  "Type annotations vs. initializers & numbers."
---

I've noticed that experienced Swift developers are more likely to use type annotations instead of initializers when working with numbers.

That means using
``` swift
let width: Float = 4
```
instead of 
``` swift
let width = Float(4)
```

I thought it was a holdover from Obj-C where type annotations come first. However, today I dealt with a bug that makes it clear adding type annotations is superior.

``` swift
let a: CGFloat = 3 / 10 // 0.3
let b = CGFloat(3 / 10) // 0.0
```
In `b`, the division is done with two integers. `Int` rounds down, so it gives you the `CGFloat` version of 0. Probably not what's intended.

On the other hand, for `a`, the compiler smartly wraps both integers in `CGFloat`, which gives you the result you're actually looking for.

