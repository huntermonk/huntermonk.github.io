---
layout: post
title:  "Interest Rate Arbitrage Performance Pt. 3: Why are interest rates so high? 🌴"
---

Previously I [wrote about my interest rate arbitrage method](http://huntermonk.com/2021/02/06/publish-interest-rate-performance.html).

To recap, a bank savings account [gives you 0.01% interest](https://www.chase.com/personal/savings/savings-account/interest-rates). 

![chase savings account](/img/interest/chase-savings.png)

Lending out [USDC](https://www.coinbase.com/usdc) or [USDT](https://tether.to/) (crypto stable coins that are guaranteed to always be worth $1 per token), earns you something like 16.99% right now.

![fulcrum lending](/img/interest/fulcrum-lending.png)

Meaning, if you have 100k in cash and store it at Chase for a year, at the end of the year you'll have $100,010. Using Fulcrum (pictured above), you would have $116,990.
## Why the huge gap?
There are two reasons:

1. If you're bullish on crypto, it's better to get a collateralized loan against your crypto than to sell it. Lots of people want these loans.
2. When [volatility is high](https://www.buybitcoinworldwide.com/volatility-index/), traders increase leverage to speculate, and are willing to pay more.

#### 1. Better to get a loan than to sell
_Using Bitcoin (BTC) as an example, but this applies to all non-stablecoins and assets._

Everyone is encouraged to [never sell](https://twitter.com/GoingParabolic/status/1359238749062856704) Bitcoin. Even Warren Buffett says he buys companies he plans to [never sell](https://finance.yahoo.com/news/warren-buffett-only-reason-sell-174218068.html).

But if I never sell my Bitcoin or stock, how do I use it to buy stuff? The answer is: **you get loans against your BTC (assets) as collateral**.

That is [a collateralized loan](https://www.investopedia.com/terms/c/collateralization.asp). 

For example, [BlockFi](https://blockfi.com/) will loan you $10k at a 9.75% interest rate if you put up 0.43 BTC ($20,321 at time of writing) of collateral. Meaning, if you don't pay back your loan, they will begin selling parts of your BTC to pay for your loan.

![BlockFi loan](/img/interest/blockfi-loan.png)

So, why is paying that 9.75% better than just selling BTC to pay for life? A hypothetical:

- A retired BTC holder has $256k of BTC. He lives a $120k / year lifestyle.
- To pay for his life, he can sell $120k worth of BTC each year.
- But, he pays the [15% long-term capital gains tax](https://www.nerdwallet.com/article/taxes/capital-gains-tax-rates) if he sells. (assuming the best case here, that he held the BTC over a year)
- That means, to actually get $120k after tax, he needs to sell $141,176.47 of BTC.
- This costs him $21,176.47 (taxes).
- At the end, he has $114,823.53 worth of BTC left.

With a collateralized loan:
- He puts up $240k in BTC to BlockFi.
- Gets a loan for $120k at 9.75%.
- Over the year, it costs him $11,700.
- To cover that, he sells $13,764.71 of BTC (has to pay for long-term capital gains).
- This costs him $2,064.71 in taxes.
- $2,064.71 is $19,111.76 less than the taxes in scenario #1, **but he still has $242,235.29 worth of BTC!**

This second scenario is **massively** better. It's $242,235.29 - $114,823.52 = $127,411.77 better.

You can make this example even more dramatic by making him pay short-term capital gains in scenario #1, and accounting for the increase in value of BTC this year. (will do in future post)

#### 2. High volatility
In the above example, the lender is only getting 9.75%. How can the lender afford to give out 16.99%?

The more fickle but higher margin source of revenue for lenders is on margin trading. When volatility increases, more people want to speculate. [Volatility of Bitcoin is very high](https://www.buybitcoinworldwide.com/volatility-index/).

As of writing, people will pay 21.06% to speculate long on BTC:

![chase savings account](/img/interest/margin.png)

