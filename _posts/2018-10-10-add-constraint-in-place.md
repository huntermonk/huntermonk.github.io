---
layout: post
title:  "Interface Builder: Add constraints keeping view in place."
---

I discovered a new feature in Interface Builder today. Hold the option key while control-dragging from view-to-view to add a constraint, while keeping the view in place.

Holding ⌃ while dragging between views presents a window for adding constraints:

![add constraint menu](/img/add-constraint.png)

However, this will add the constraint with a `constant` of 0.

To add the constraint with a constant equal to the view's current position, hold down the ⌥ key dduring your drag:


![add constraint in-place](/img/add-constraint-in-place.gif)
