---
layout: post
title:  "Corporate language pt 2. 👎🏼"
---
Earlier, I wrote that the CEO of Robinhood, [Vlad Tenev](https://en.wikipedia.org/wiki/Vlad_Tenev), [uses ridiculous corporate language](http://huntermonk.com/2021/02/02/corporate-language.html). It was on full effect during his [interview with Elon Musk](https://www.businessinsider.com/elon-musk-clubhouse-robinhood-ceo-vlad-tenev-interview-gamestop-stocks-2021-2) and in the [Gamestop White House Financial Services Hearing](https://www.c-span.org/video/?508545-1/gamestop-hearing-part-1&event=508545&playEvent).

## Deviation
In both interviews, Vlad mentions that $GME's sudden rise in price is a 5 sigma event. It's an over-the-top way of saying an event that is 5 standard deviations from the norm in a _normal (Gaussian) distribution_. [1]

He also sometimes describes it as a ["one in 3.5 million event"](https://twitter.com/vladtenev/status/1364756914509287425).

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">This was a five sigma Black Swan event (1 in 3.5 million), so basically model-breaking. Our daily VaR requirement increased from $282M to $1.4B in 1 day (see page 10 of my written testimony to the House Financial Services Committee <a href="https://t.co/QbOUyg3aSP">https://t.co/QbOUyg3aSP</a>)</p>&mdash; VLAD (@vladtenev) <a href="https://twitter.com/vladtenev/status/1364756914509287425?ref_src=twsrc%5Etfw">February 25, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

[_Here's a refresher on standard deviations._](https://www.mathsisfun.com/data/standard-deviation.html)

## Intuition
The thing is, intuitively, you can just feel that GME's rise in price is not a once in 3.5 million event. 

It's hard to tell what Vlad means. [2] It could be:

1. In 3.5 million trading days, any stock rising this fast would happen once. (3.5m / [253 trading days in a year](https://en.wikipedia.org/wiki/Trading_day#:~:text=The%20NYSE%20and%20NASDAQ%20average,Day%2C%20Martin%20Luther%20King%20Jr.) = once every 9,589 years)
2. Of the [2,800 stocks on NYSE](https://www.aol.com/news/nasdaq-vs-nyse-key-differences-200641822.html#:~:text=The%20NYSE%20trades%20stocks%20for,has%20to%20meet%20strict%20requirements.), this will happen once in 3.5 trading days. ( (3.5m / 365) / 2800 = once every 4.94 years) [3]

Neither of these makes sense.

### Scenario #1
$GME rose a lot; but it wasn't unheard of. On 1/15/2021, it was trading at $35.50. 

Twelve days later on 1/27/2021, at its peak, it hit $347.51. A 878.90% increase.

![GME price near rise](http://huntermonk.com/img/corporate-pt-2/gme-comparison.png)

That's a lot. But this happens all the time. Last year, Kodak had a bigger rise than Gamestop, and did it in **5 days**.

![Kodak prices](http://huntermonk.com/img/corporate-pt-2/kodak.png)

Definitely not one in 3.5 million.

### Scenario #2
At the other end of the spectrum: if an event happens every 5 years, you should be prepared for it. Full stop.

## Nassim Nicholas Taleb Calls Him Out
In the tweet embedded above, Vlad says:

> This was a five sigma Black Swan event...

Nassim Nicholas Taleb (NNT), who invented the term Black Swan, responds to Vlad's tweet:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">It was NOT 1 in 3.5 million!!!!</p>&mdash; Nassim Nicholas Taleb (@nntaleb) <a href="https://twitter.com/nntaleb/status/1367185718141927425?ref_src=twsrc%5Etfw">March 3, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

NNT then adds an explainer video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/k_lYeNuBTE8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Nassim's Explanation
In summary, what the above video says is: you can only apply sigmas if you **are certain you're dealing with a perfectly gaussian distribution**. [4]

If there's any doubt that the outcomes are gaussian, when you see an unlikely (6 sigma event), it basically confirms to you that the distribution _is not gaussian._ 

This is a version of [Wittgenstein's ruler](https://wisdomsummary.com/the-wittgensteins-ruler/). Think about it this way.

1. You live in North America in year 500. You've only seen white swans.
2. You believe all swans are white.
3. A traveler brings a black swan from Australia, and shows you.
4. You can either conclude:
    1. That is not a swan.
    2. Some swans are black.

In the stock market:
1. You believe events in the stock market are a perfect normal (Gaussian) distribution. 
2. Gamestop rises up unexpectedly fast.
3. If stock prices are normally distributed, that makes this a 5 sigma event.
4. You can either conclude:
    1. This is truly a one in 3.5 million event.
    2. Stock prices are actually not a normal distribution.

The answer is swans are black; stock prices are not normally distributed, and prices change like this all the time.

It's clear that:
1. Vlad is intentionally using handwavy math to say he's not responsible.
2. Doesn't understand the math.

-----

[1] Using unnecessarily complex terms is [a common thing bullshitters do](https://twitter.com/naval/status/752796426208325632).

[2] Intentionally being obscure is another common thing they do.

[3] This could also be some other cherry-picked stat by combining Gamestop's market cap, trading value, and some other factors.

[4] NNT uses [LTCM](https://en.wikipedia.org/wiki/Long-Term_Capital_Management) as an example. Their hedge fund blew up, and they claimed it was a 10 sigma event. If you are even only 99.9999% sure that it's a normal distribution and you see a 10 sigma event, the likelihood that it's actually 10 sigma is 2.03 x 10^-15.

