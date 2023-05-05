= Problem Solving
/ Making observations:
- Play around with small data.. if you're stuck you haven't done this enough!
- Take data to the extreme and see what happens. For instance, in an inequality, see where it is equal or almost equal
/ Things to try:
- Exploit offline when possible: allows for persistent DS and many algorithms such as DNC.
- Chuck on a segtree on top of an arbitrary dimension with wild functions. For example, on a graph, build a segtree on the preorder of nodes or ID of edges.
- Popping dimensions. For example, viewing segments on a line as a point in 2D
- Taking hints from subtasks and constraints. For example, $N <= 20$ suggests $O(2^N)$ i.e. some form of bitmask dp.
- Look for bijections.
- Look for optimal orderings.
- Consider: shortest paths, MSTs or other optimal paths as they are often used in proofs/solutions.
- If the idea does not work out nicely, still go through with it as the solution might be complicated.
- Swap perspective. For example, instead of considering every pair of vertices $u$ and $v$, instead consider every node $p$ first and find vertices $u$ and $v$ which has $p$ as their LCA. $sum_i sum_j a_(i,j) = sum_j sum_i a_(j, i)$
- Binary search and jump pointers.
- Stuff in reverse. Processing the latest events in an offline problem first rather than the earliest ones.
- Consider euler path on trees, as well as preorder and postorders.
- Flavours of the pigeonhole principle. If $sum a_i = K$, then there will be at most $sqrt(K)$ unique $a_i$. If $k$ points are on a line of $L$ length, then theres one segment of under/over $L/k$.
- Calculate time complexity correctly. Don't overestimate the time complexity for a correct solution.
- Look for monoticity, convexity or even convexity on a slope function.
- Read the problem statement again and carefully.
- Graphs are everywhere.
- Read every question first before beginning.
- Take regular breaks
/ When debugging:
- Make a python script along with a bash script to automate testing (go for an easier subtask so you know that it's correct)
- Maybe the order of operations is wrong (a + (b == c)) or multiplied then added in a dp etc.
- Make sure to print a lot!
