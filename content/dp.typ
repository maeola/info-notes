= DP
== SOS
As outlined in #link("https://codeforces.com/blog/entry/45223").
You want `dp[i,mask]` to represent the sum of `A[submask]` such that `submask` only differs from `mask` in the first $i$ bits.
Below shows the code that does this implicitly.

Also see @bits for more bit manips.
```cpp
for (int i = 0; i < (1 << N); i++)
    dp[i] = A[i];
for (int i = 0; i < N; i++)
    for (int mask = 0; mask < (1 << N); mask++)
        if (mask & (1 << i))
            dp[mask] += dp[mask ^ (1 << i)];
```
== Knuth's and DNC
If some properties of a dp recurrence is satisfied, then we apply useful optimisations. Things to watch out for are:
- Monoticity
- Convexity
- Geometric shapes (for example if the reccurence is linear we can apply CHT)
See @monoconv for strats to prove such properties.
== DP on Trees
We can DP on trees by storing the state and node that we are on and progressing downwards. We can also construct a tree by DP by joining roots.
