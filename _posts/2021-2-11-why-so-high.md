---
layout: post
title:  "Arbitrage strategy: Why interest rates so high. 🌴💨 (3/3)"
---

Previously I [wrote about my interest rate arbitrage method](http://huntermonk.com/2021/02/06/publish-interest-rate-performance.html).

To recap, a bank savings account [gives you 0.01% interest](https://www.chase.com/personal/savings/savings-account/interest-rates). 

![chase savings account](/img/interest/chase-savings.png)

Lending out [USDC](https://www.coinbase.com/usdc) or [USDT](https://tether.to/) (crypto stable coins that are guaranteed to always be worth $1 per coin), earns you something like 16.99% right now.

![fulcrum lending](/img/interest/fulcrum-lending.png)

Meaning: if you have 100k stored at Chase for a year, you'll have $100,010 at the end of the year. Using Fulcrum (pictured above), you would have $116,990.
## Why the huge gap?
There are two reasons:

1. If you're bullish on crypto, it's better to get a collateralized loan against your crypto than to sell it. Lots of people want these loans. [1]
2. When [volatility is high](https://www.buybitcoinworldwide.com/volatility-index/), traders increase leverage to speculate, and are willing to pay more.

#### 1. Better to get a loan than to sell
_Using Bitcoin (BTC) as an example, but this applies to all non-stablecoins and assets._

Everyone is encouraged to [never sell](https://twitter.com/GoingParabolic/status/1359238749062856704) Bitcoin. Even Warren Buffett says he buys companies he plans to [never sell](https://finance.yahoo.com/news/warren-buffett-only-reason-sell-174218068.html).

But if I never sell my Bitcoin or stock, how do I use it to buy stuff? The answer is: **you get loans against your BTC (assets) as collateral**.

That is [a collateralized loan](https://www.investopedia.com/terms/c/collateralization.asp). 

For example, [BlockFi](https://blockfi.com/) will loan you $10k at a 9.75% interest rate if you put up 0.43 BTC ($20,321 at time of writing) of collateral. Meaning, if you don't pay back your loan, they will begin selling parts of your BTC to pay for your loan.

![BlockFi loan](/img/interest/blockfi-loan.png)

So, why is paying that 9.75% better than just selling BTC to pay for life? A hypothetical:

- On January 1st, 2020, a BTC holder has 142.2189 BTC worth $1,240,000. He lives a $120k / year lifestyle.
    - [BTC = $7,200.17 on 1/1/2020](https://finance.yahoo.com/quote/BTC-USD/history?period1=1577836800&period2=1577923200&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true). 
- To pay for his life, he can sell $120k worth of BTC each year.
- But, he pays the [15% long-term capital gains tax](https://www.nerdwallet.com/article/taxes/capital-gains-tax-rates) if he sells.
    - Assumes best case, that he held the BTC over a year.
- That means, to actually get $120k after tax, he needs to sell 19.607 BTC worth $141,176.47. 
- This costs him $21,176.47 (taxes).
- On Jan 1st, 2020, he sells that amount and is left with 122.6119 BTC worth $882,826.52.
- At year end (12/31/2020), BTC is [worth $29,001.72](https://finance.yahoo.com/quote/BTC-USD/history?period1=1609286400&period2=1609545600&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true). He has 122.6119 BTC **worth $3,555,955.99**.

With a collateralized loan:
- He puts up $240k in BTC to BlockFi.
- Gets a loan for $120k at 9.75%.
- Over the year, the loan will cost him $11,700.
- To cover that, on 1/1/2020, he sells 1.912 BTC worth $13,764.71 (has to pay the 15% long-term capital gains tax), and sets it aside. 
    - He now has 140.3069 BTC left.
- This costs him $2,064.71 in taxes.
- At year end (12/31/2020), his BTC is worth $4,069,141.43. 
- To close out his loan (he still needs to pay back that $120k), he now sells 4.87 BTC worth the same $141,176.47.
- He now has 135.4369 BTC worth $3,927,903.05, a **$371,947.06** difference.

This second scenario is **massively** better. 

It can be even more dramatic in a few ways: 
1. Have him pay short-term capital gains in scenario #1
2. In Scenario #2, use a 4:1 collateral ratio (put up 400k BTC to get 100k cash) to drop interest rate to 4.5%; way, way better. 
3. Have a business do #2; case is stronger because it's taxed on profit, not income.

#### 2. High volatility
In the above example, the lender is only getting 9.75%. How can the lender afford to give out 16.99%?

The more fickle but higher margin source of revenue for lenders is margin trading. When volatility increases, more people want to speculate. [Volatility of Bitcoin is very high right now](https://www.buybitcoinworldwide.com/volatility-index/).

As of writing, people will pay 21.06% to speculate long on BTC:

![chase savings account](/img/interest/margin.png)

## Closing the loop
- Guy from Scenario #2 gives BlockFi $240k worth of BTC, BlockFi gives back $120k USD at 9.75% interest.
- BlockFi has $120k in value left.
- BlockFi lends out this $120k to speculator at 21.06% interest.
- At year-end, BlockFi gets $11,700 from Scenario #2 guy, and $25,272 from speculator for a total of $37,972.

_Note: Above is over-simplified but directionally accurate. I'm aware; I don't need comments picking it apart._


_____

[1] The key here is "if you're bullish on crypto". This is just another form of leverage; if the price of BTC declined during the year, losses would be increased.
