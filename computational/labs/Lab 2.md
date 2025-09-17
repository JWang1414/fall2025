### Question 1
---
b.
The error on the second method is greater, because it is the less accurate method

---
c.
We find that, for the distribution with the very large mean, the relative error on the second standard deviation calculation is several magnitude larger than it was previously.

This tells is that the issue with the second method is likely because there are round-off truncation errors, because two very large, but similar numbers, are being subtracted from each other.

---
d.
In issue in the previous part is that the mean is too large, therefore, we need to calculate the mean for smaller numbers. This can be done by shifting all the values in the dataset closer to the origin, calculating the standard deviation, and then shifting it back to where it was before.

We will use some random data-point, like the first data-point to shift the mean closer to the origin. This relies on the data being closely distributed, otherwise, our shift may not be significant enough to reduce the error.
### Question 2
---
av.
- The values from the Simpson estimation will be very close, and so the round-off or the truncation error after subtracting $I_{1}$ from $I_{2}$ will be small enough that machine error will be significant
- We can attempt to reduce this by using smaller values of $N$, like $N_{2}=4$ and $N_{1}=2$. However, this also means our integral estimation of the original function begins to resemble something else entirely
- We can attempt to use more accurate values, with accuracy up to 64 or 128 bits, however this does not solve the issue as much as push it away
- We can try a similar function to the given one, one with an integral value far smaller, so the truncation error is not as significant when we are subtracting them from each other
---
b.
Our functions look pretty similar
- Look at them later and write something more detailed later though
### Question 3
Hardly any writing in this question. We got our accuracy down pretty well, and our plots look pretty good.