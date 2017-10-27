---
layout: post
title:  "Crash on iOS 11 sticker pack first run."
---

The first time you run your [Sticker Pack](https://developer.apple.com/stickers/) application on iOS 11, you'll probably get a crash similar to the following.

> 2017-10-25 14:56:10.513268-0700 MobileSMS[94610:5136614] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: 'attempt to scroll to invalid index path: <NSIndexPath: 0x60c00023b820> {length = 2, path = 0 - 9223372036854775807}'

This is pretty confusing because you probably don't have any index paths specified in your sticker pack.

Your simulator is actually trying to scroll to your sticker pack app icon and press it! Unfortunately, your sticker pack isn't enabled yet, so the index path is invalid.

To enable your sticker pack, first open your simulator, and tap on a message thread.

![Kate conversation](/img/sticker-crash/kate.png)

Then, tap the ellipsis at the bottom to open the iMessage app modal.

![iMessage app modal](/img/sticker-crash/modal.png)

Tap the edit button at the top-right, then enable your app under the "MORE APPS" header.

![Enable sticker pack](/img/sticker-crash/edit.png)

Re-run your app and your sticker pack will open. 👍🏼
