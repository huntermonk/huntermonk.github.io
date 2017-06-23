---
layout: post
title:  "⚠️ Layout warnings. ⚠️"
---

When you get layout warnings like this, it almost always means that you need to reduce the priority on one of the constraints

![Constraint priority conflict](/img/layout-warnings/constraint.png)

`UIStackView` requires the ability to show/hide elements. When it hides them, it sets the height or width of the element to 0. It reduces height if it's a vertical stack view and width if it's a horizontal stack view.

To allow the view's dimensions to be overridden by the `UIStackView`, you need to reduce the conflicting constraint's priority to 999.

If your layout is working as expected, but you are getting this warning, try reducing priority on the constraint that auto layout is breaking. In this case, that's the height constraint on checkbox. 

This is a real-life example, and when I reduced the priority to 999, the layout worked as with no constraint breaking.
