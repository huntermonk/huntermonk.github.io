---
layout: post
title:  "KeyPath use in production. 🎉"
---

I made my first production use of key paths around a month ago.

In this project, we have a `Location` model. A simplified version is:
``` swift
struct Location {
    let id: String
    let barcode: String

    let isStandardLocation: Bool
    let isNestedCarton: Bool
    let isCarton: Bool
    let isFloorLocation: Bool
}
```
We want to find the first location in an array of `Location` where `isStandardLocation == true`. If none are `isStandardLocation`, then find the first location with `isNestedCarton`. Then `isCarton`, then `isFloorLocation`.

_We **don't** want to get the first item that's a standard location or nested carton etc. We want to check the entire array for the first standard location, then entire list for first nested carton. If `locations[2].isNestedCarton` and `locations[9].isStandardLocation`, we want `locations[9]`._

The easiest way to solve this is using [`[Location].first(where:)`](https://developer.apple.com/documentation/swift/array/1848165-first).

``` swift
if let standardLocation = locations.first(where: { $0.isStandardLocation }) {
    return standardLocation
} else if let nestedCarton = locations.first(where: { $0.isNestedCarton }) {
    return nestedCarton
} else if let carton = locations.first(where: { $0.isCarton }) {
    return carton
} else if let floor = locations.first(where: { $0.isFloorLocation }) {
    return floor
} else {
    return nil
}
```
This works, but it's repetitive. The `if let` and `else if let` statements are unnecessary. The only part that changes is the property after `$0`.

This can be simplified by removing the `if let`s.

``` swift
let standard = locations.first(where: { $0.isStandardLocation })
let nested = locations.first(where: { $0.isNestedCarton })
let carton = locations.first(where: { $0.isCarton })
let floor = locations.first(where: { $0.isFloorLocation })
return [standard, nested, carton, floor].compactMap { $0 }.first
```

Better. Everything up to `$0` is repeated, and the `compactMap` is unintuitive, though.

They can be optional-chained together.
```swift
return
  locations.first(where: { $0.isStandardLocation })
  ?? locations.first(where: { $0.isNestedCarton })
  ?? locations.first(where: { $0.isCarton })
  ?? locations.first(where: { $0.isFloorLocation })
```

This is the best we can do using the `first` method. This is fine in the majority of cases.

However, if you want to go the extra mile, you can use [KeyPath](https://developer.apple.com/documentation/swift/keypath).

First, define the method for retrieving a location by `KeyPath`.

``` swift
func first(_ keyPath: KeyPath<Location, Bool>) -> Location? {
    return locations.first(where: { $0[keyPath: keyPath] })
}
```
This method says, "Return the `first` item in `locations.where: { keyPath == true}`." 

`keyPath` is a `KeyPath` generic over `Location` and `Bool`. Meaning, `keyPath` must be a `Bool` property on `Location`.

To get our desired location, we simply:
``` swift
return first(\.isStandardLocation) 
    ?? first(\.isNestedCarton) 
    ?? first(\.isCarton) 
    ?? first(\.isFloorLocation)
```
🎉
