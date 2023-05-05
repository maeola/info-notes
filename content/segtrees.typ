= Segtrees
== Simple point update range query
As outlined in #link("https://codeforces.com/blog/entry/18051"). Just do this when you're lazy. Performance is comparatively better than a full functional segtree and is on par with Fenwick trees.
```cpp
int sg[2 * N + 5];
// build
for (int i = 1; i <= N; i++)
    sg[N + i] = A[i];
for (int i = N - 1; i; i--)
    sg[i] = f(sg[2 * i], sg[2 * i + 1]);
// set at position i with value t
for (sg[i += N] = t; i > 1; i /= 2)
    sg[i / 2] = f(sg[i], sg[i ^ 1]);
// query [l, r]
int val = 0; // default value
for (l += N, r += N; l <= r; l /= 2, r /= 2)
{
    if (l & 1)
        val = f(val, sg[l++]);
    if (not(r & 1))
        val = f(val, sg[r--]);
}
```
== Annoying range update set + add
When we push down from a node, we want to:
+ Update self values according to lazy set
+ If lazy set exists, update children's lazy set and set their lazy add to 0
+ Update self values according to lazy add
+ Update children's lazy add with self lazy add
+ Reset lazy variables
Updates are relatively trivial.
== Beats
Segtree beats just refers to time complexity analysis on complex segtrees. For example, to set $x_i = min(x_i, h)$ in a given range, we can simply recurse the segtree and only update our node if the update range covers the entire node range *and* $h > "mx"_2$ where $"mx"_2$ is the second max. This actually works out to not have a bad time complexity!
