---
layout: post
title:  "Facebook interview."
---

Today is my technical interview with Facebook. A week ago, a technical recruiter from Facebook found me via LinkedIn and emailed me.

Oddly enough, about a week before the email, I asked an acquaintance, [modocache](http://modocache.io), what he did to prepare for his interview with Facebook. He recommended [Cracking the Coding Interview](https://www.amazon.com/Cracking-Coding-Interview-Programming-Questions/dp/0984782850/ref=pd_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=R563JB8S32EPZQNKVDRA).

So, for the past week I've been studying that book along with basic data structures in Swift, since FB interviews tend to revolve around that. [Here are](https://github.com/huntermonk/fb-interview-prep) the playgrounds I've been made as practice.

I didn't study computer science in school, so my knowledge of those subjects is fairly weak.

I'll come back to update this after the interview, which is at 12:30PM CST.

**Update:**
------------

The interview went fairly well.

My interviewer works on the stories function of Instagram. He started out with some general questions about Swift like value vs. reference types - why do I like Swift, etc.

The first coding question was essentially, how can we remove duplicates from this array in O(n) time? To be totally honest, I panicked a bit, and it took me a little while to get the answer, which ended up being fairly simple.

``` swift
// Return this array with duplicates removed while retaining the 
// original ordering.
let input = ["dog", "cat", "hello", "bar", "cat", "hello", "dog"]

// First went down the brute-force route. Because `contains` is 
// O(n), the function is O(n^2) which I missed at first.
func removeDuplicates(from words: [String]) -> [String] {
	var output = [String]
	for word in words {
		if !output.contains(word) {
			output.append(word)
		}
	}
	return output
}

// You can instead use a set to store only uniques, and add 
// them array to retain order. That is O(n)
func removeDuplicates(from words: [String]) -> [String] {
	var output = [String]
	var uniques = Set<String>()
	for word in words {
		if !uniques.contains(word) {
			uniques.append(word)
			output.append(word)
		}
	}
	return output
}
// This takes up a lot of space as well. Not a great answer.
```

The second question was how to setup autocompletion for a text field. That was a little more in-line with what I do in the day-to-day, so that was slightly easier.

We added a timer so that we only request autocompletion results every three seconds. It was fairly straightforward.

I'm not sure how comfortable Facebook is with publically writing about my experience, so I'm going to confirm before adding more.
