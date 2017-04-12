---
layout: post
title:  "SPM has a JSON parser."
---

[@calebd](https://twitter.com/calebd) pointed out that in Swift Package Manager (SPM), they have a very simple [JSON parser](https://github.com/apple/swift-package-manager/blob/master/Sources/Basic/JSON.swift).

It seems like Swift would greatly improve if Apple released it as its own library.

SPM also includes an [`Await`](https://github.com/apple/swift-package-manager/blob/master/Sources/Basic/Await.swift#L17-L32) and [`Result`](https://github.com/apple/swift-package-manager/blob/master/Sources/Basic/Result.swift) type. 

Beginners tend to bring in massive libraries to accomplish any of these three tasks - maybe if all three of these were available as their own libraries, that wouldn't happen as often. 
