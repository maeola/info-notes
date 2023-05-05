= Tricks
== Alien's Trick
Outlined in #link("https://mamnoonsiam.github.io/posts/attack-on-aliens.html"). In essence, you have $f(x)$ which is convex/concave. Then, you can find binary search on the slope of $f(x)$ as it is monotonic.

You need to be able to find the optimal $f(x) - k p$ for a fixed $k$, then by shifting $k$, you can adjust the value $p$ which optimises $f(x)$ to your liking.
== Slope Trick
Maintain a convex function with a constant $c_0$ and the $x_i$ at which the function changes slope.
== CDQ
DNC on time: complete all updates on the LHS before answering queries on the RHS.
== CHT
Monotonic CHT is best: just sort by gradient then compare intersection points. If offline, every CHT can be converted into monotonic CHT by CDQ (while not damaging the time complexity as both adds an extra $O(log n)$.

Otherwise, doing a li chao tree might be easier.

```cpp
ll eval(pair<ll, ll> line, ll p) { return line.first + line.second * p; }

bool skip_middle(pair<ll, ll> a, pair<ll, ll> b, pair<ll, ll> c)
{
    return (b.first - a.first) * (c.second - b.second) >
           (c.first - b.first) * (b.second - a.second);
}
```
Note that when querying the above CHT, a binary search is required on `eval`.

== Butterfly
Bit iteration. Can be useful to consider each bit of a number individually, or to split a group by their $i^"th"$ bit.

== Persistence
If a data structure strictly supports operations in $O(a)$, then persistence can simply be achieved by recording the operations then reverting them.

== Offline deletion
DNC on the time segments for which the updates take place can achieve some sort of offline deletion.

== Proving Monoticity or Convexity <monoconv>
/ Quadrangle Inequality: $f(a, c) + f(b, d) <= f(a, d) + f(b, c) quad forall a <= b <= c <= d$
/ Monoticity: $f(x) <= f(x + 1)$
/ Convexity: $f(x) - f(x - 1) <= f(x + 1) - f(x)$
