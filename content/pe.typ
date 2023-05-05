= Performance Engineering
== Flags
The following pragmas at the start of your code *can* speed it up. But use it sparingly, since they might slow your code down as well.
```cpp
#pragma GCC optimize("Ofast")
#pragma GCC target("avx2")
```
== Cache Locality
Memory access up to magnitudes faster. In general, just make sure to have the correct loop order for bottom-up dp.

== DS
Some DS are a lot faster than others. In general:
- Fenwick trees are faster than segment trees
- Priority queues are faster than sets, which in turn are faster than segments trees
- Treaps are pretty slow, but not as slow as you think (alternatives are much slower!)
- Policy DS tend to be even slower (?)
