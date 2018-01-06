---
layout: post
title:  "Handling interruptions while coding."
---

_From [Ironistic](https://www.ironistic.com/the-cost-of-distractions-on-developers/) on the cost of interrupting someone while they're coding:_

> The average lost time is 23 minutes per major interruption, according to The Wall Street Journal. On top of that, programmers can take 10-15 minutes to restart editing code after resuming work from an interruption.

Paul Graham has two great essays focused on this topic, [Holding a Program in One's Head](http://www.paulgraham.com/head.html) and [Maker's Schedule, Manager's Schedule](http://www.paulgraham.com/makersschedule.html). I recommend reading them.

"Well, I'm just going to work 'hacker hours' so nobody interrupts me." is a fanciful idea. In practice, that rarely works. You need to collaborate with others to achieve most things that are meaningful.

Instead, you can be ruthless about refactoring code. A hallmark of well-factored code is that there are discrete chunks of objects, or systems, so that when you're thinking about a problem, you're only thinking about a small "piece" of the app. The smaller that "piece" is, the easier it is to ramp up to your understanding of it after an interruption. 

The opposite example is helpful. If you imagine the worst 🍝 code you can imagine, where every object touches every single other one, that means you have to hold the entire app in your head whenever you make any changes. That's the maximum complexity possible for that app, and thus, the largest amount of information you need to re-ingest after an interruption. It will take the longest to understand again.

There are lots of benefits to refactoring often, but I rarely hear the argument presented here.
