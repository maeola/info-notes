= Ad Hoc
== Josephus
Simple recursion (1-indexed):
$
J_(n,k) = ((J_(n-1,k) + k - 1) mod n) + 1
$
This arises when we consider what happens when we remove the first number: we delete that number and arrive at the same problem just everyone's labels are shifted.
As outlined in #link("https://cp-algorithms.com/others/josephus_problem.html#modeling-a-ok-log-n-solution"), we can model a $O(k log n)$ solution too.
```cpp
// 0-indexed
int josephus(int n, int k)
{
    if (n == 1)
        return 0;
    if (k == 1)
        return n - 1;
    if (k > n)
        return (josephus(n - 1, k) + k) % n;
    int cnt = n / k;
    int res = josephus(n - cnt, k);
    res -= n % k;
    if (res < 0)
        res += n;
    else
        res += res / (k - 1);
    return res;
}
```
== SBBSTs (treaps)
Can be difficult to implement and prune to bugs. As always, remembering code is dangerous and you should always aim to understand the inner workings of a DS.
/ $"clean"(x)$: maintains all values in node $x$ with children's values (don't forget size!)
/ $"split"(x, p) -> (l, r)$: splits node $x$ into 2 nodes $(l, r)$ with some property $p$; for example if this is an implicit treap, $p$ might be the size of $l$
/ $"merge"(l, r) -> x$: merges 2 nodes into 1 by comparing priorities
== Inclusion exclusion principle
Pretty self explanatory. When used in conjunction with bitmasks, #raw("__builtin_parity(x)", lang: "cpp") may be desired.
== Precompiled headers
To find where the header are located, run:
```bash
g++ -H dummy.cc 2>&1 | head
```
Then, simply make the precompiled header:
```bash
sudo g++ <your flags> <header file>
```
Note that sudo privileges may or may not be required. In case that you do not have enough permissions, simply make a copy of the header file and put it in a location where you do have permissions.
== GCC Policy DS
Mentioned in #link("https://codeforces.com/blog/entry/11080") and #link("https://codeforces.com/blog/entry/60737").
```cpp
#include <bits/extc++.h>
// a faster version of unordered_map with less features
template <typename T, typename V> using hmp = __gnu_pbds::gp_hash_table<T, V>;
using namespace __gnu_pbds;
typedef tree<int, null_type, less<int>, rb_tree_tag,
             tree_order_statistics_node_update>
    OrderedSet;
ordered_set.insert(x); // inserts x
*ordered_set.find_by_order(i); // gets x[i] (in sorted order)
ordered_set.order_of_key(val); // gets num elems < val
```
== Sorted stack and jump pointers
== Bits <bits>
Some useful and common bit manips.
```cpp
// least significant bit
x & -x
// loop through every submask (except 0)
for (int submask = mask; submask; submask = (submask - 1) & mask)
// mask with only ith bit set; 2^i
1 << i
// mask with least k bits set
(1 << k) - 1
// number of most significant zeros in the bit representation
__builtin_clz(x)
// number of least significant zeros in the bit representation
__builtin_ctz(x)
// popcount
__builtin_popcount(x)
// parity of popcount
__builtin_parity(x)
// print in binary form
cout << bitset<32>(x)
```
== Gray code
As outlined in #link("https://cp-algorithms.com/algebra/gray-code.html").

This is a binary system where sucessive values differ by exactly one bit.
```cpp
int g(int n)
{
    return n ^ (n >> 1);
}
int g_inv(int n)
{
    int n = 0;
    for (; g; g >>= 1)
        n ^= g;
    return n;
}
```
== XOR basis
This procedure is very similar in how one would compute a basis in an actual k-dimensional vector space.
```cpp
int basis[k];
int sz = 0; // size of basis

void insert(int mask)
{
    for (int i = 0; i < k; i++)
    {
        if (not ((mask >> i) & 1)) continue;
        if (not basis[i])
        {
            basis[i] = mask;
            sz++;
            return;
        }
        mask ^= basis[i];
    }
}
```
== Sqrt
Sqrt is very useful.
== Meet in the Middle
This is probably not _that_ useful..
== Burnside/Pólya
== Heuristics
/ Hill Climb: Pretty much the best there is in the context of informatics
/ Ant colony: simulate a bunch of ants moving on a graph. If a path is good, then they deposit pheromones on all edges on the path so that it will be taken more in the future.
/ Simulated annealing: bunch of random state transitions with regard to a decreasing temperature which controls the probability of each transition.
