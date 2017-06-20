---
layout: post
title:  "The most ridiculous line of code I've seen in production."
---

I came across this line in production

``` swift
let animated = presentedViewController == nil && route.animateTransition == false ? false : true
```

It's more confusing than you'd expect. My initial thought is that it was equivalent to

``` swift
let animated3 = (presentedViewController == nil && route.animateTransition) == false ? false : true
```

but that ending `)` is out of place. Everything before a ternary operator will be executed before the remaining cases. So it's actually

``` swift
let animated4 = (presentedViewController == nil && route.animateTransition == false) ? false : true
```

Still not very readable. The next clue to break this down is that `? false : true` is very long-hand for `!`. So that statement is equivalent to

``` swift
let animated5 = !(presentedViewController == nil && route.animateTransition == false)
```

It's really hard to keep on breaking down this statement until you take a step back and try to guess at what the author was trying to achieve. It seems like you would want something to be animated if `route.animateTransition` is `true` or if the presented controller exists. This could be animating a dismissal of a controlller or something like that.

Eventually, you can simplify it down to

``` swift
let animated6 = presentedViewController != nil || route.animateTransition
```

It's ~1000x more readable and much more clearly expresses the author's intent. Here is the [Gist](https://gist.github.com/huntermonk/3b77303bf2164d9d49fd913e88817f3a) with some of the intermediate steps taken out.

<script src="https://gist.github.com/huntermonk/3b77303bf2164d9d49fd913e88817f3a.js"></script>
