---
layout: post
title:  "Storyboard commits."
date:   2017-2-1 10:34:07 -0600
---

An annoying part of using storyboards is dealing with merge conflicts. Merge conflicts are handled by looking at the XML, not the actual views, so it's hard to tell which changes to make. 

Also, each time you _look_ at a storyboard, it changes.

You can avoid conflits by only committing changes that you need.

To partially commit in Xcode, just select the check/cancel button on the commit. Like this:

![Storyboard commit](/img/storyboard-commit.gif)

Tick the checkmark for changes you want, and uncheck everything else.
