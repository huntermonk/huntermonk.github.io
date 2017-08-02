---
layout: post
title:  "xcodebuild fails."
---

On my current project I manage our CI/CD system. We use GitLab Runner for our CI.

When I came back from vacation, it was failing at the archive step with a really unhelpful error. Specifically:

![archive failure](/img/archive-failure/error.png)

I would get that error when using `xcodebuild`, but not when archiving from Xcode.

My next step was to `git bisect` until I found the commit causing the problem. It narrowed the offending commit down to `5c975bb76ca706016795b0a36b662409438cb1cb`, which contains some innocuous changes.

![code1](/img/archive-failure/code1.png)
![code2](/img/archive-failure/code2.png)
![code3](/img/archive-failure/code3.png)

None of those seem like changes that would affect ability to compile. The project would build and run just fine.

Eventually I uncovered that the problem was

```
let SelectionHeaderHeight: CGFloat = 46
```

That caused Swiftlint to emit an error (but no nonzero exit code which would mean explicit failure), because that constant had a capitalized first letter.

Apparently, `xcodebuild` has stricter error requirements than Xcode. Simply de-capitalizing that variable fixed the SwiftLint error, and allowed `xcodebuild` to archive.

