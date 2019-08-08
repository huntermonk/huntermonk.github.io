---
layout: post
title:  "Hashed post #️⃣."
---

I wrote a post about my life in March 2020. I want to wait until March 2020 to release it.

To prove that I've written the post already, and that I will post it unaltered, here's the hash of the post:
```
d1c0cb73c3f98dcbc49479401640a1f4
```

# How Hashing Works

If you are unfamiliar with hashing, here is a primer.

At a high level, hashing takes in text of any length, and runs it through a function. The output of the function is a 32 character string like the one I posted above. That 32 character string is called a "hash".

If I put in the exact same text to the hashing function, I will _always_ get the same hash out at the end. More importantly, it is a completely unique hash! There is only one set of text in the world that can possibly create that hash.

Because we're guaranteed that only exactly the words in my post will hash to `d1c0cb73c3f98dcbc49479401640a1f4`, when I put up the post in March 2020, you can hash it yourself and see that it comes out to `d1c0cb73c3f98dcbc49479401640a1f4`, guaranteeing that I wrote it now and it's unaltered.
