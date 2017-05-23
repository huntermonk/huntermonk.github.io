---
layout: post
title:  "Use words, not SHA ✔️sum."
---

Tired of having to copy-paste SHAs when doing git commands?

If you type `:/word`, git will return the first commit that contains that word in the first line of the commit message.

Ex.
-----

Our git log:
```
0f62ed00 accounts for new line in the title
3665dfcf Wait to display animation until overlay completes animation
e18c97bb adds in a spacer to buffer the top if a lottie is present or not
fab0aac8 pulls in edits to the project file
5e5ba706 adds a 5star stub base, removes dynamic base, removes background colors on the 5star portion, and shrinks stack view width in the storyboard
```

```
git diff :/adds^..:/accounts
// Returns the changes made between commit e18c97bb and 0f62ed00 (inclusive)
```

Notice that it did not include `5e5ba706` which also contains "adds", because it is the second commit in our history that contains "adds".  

Also, you don't have to exclusively use the `:/word` format as all references to checksums as we did in this example. You can mix and match checksums with `:/word` format. It seems like you can sub it in anywhere you would use the commit's checksum.
