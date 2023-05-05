= Graphs
== Top sort
This can be done trivially in one dfs.
== Centroid decomp
Actually very useful. Every path from $a$ to $b$ can be thought of as $a$ to a centroid then to $b$. It is also useful for considering paths that cross the centroid for example, among other techniques.
== HLD
Don't do this... Not recommended unless you're very familiar with your implementation of HLD.
== DSU
DSU can be really usefull outside of finding connected components.

We can do offline LCA with DSU by doing a single dfs. If we are at node $i$ and exit a child $j$, we merge node $i$ and node $j$ such that $j$'s parent points to $i$. Then, as we are about to exit node $i$, the answer to all queries of the form $"lca"(s, i)$ where $s$ is seen before is simply $"get_parent"(s)$.

We can also do a bunch of other useful stuff with DSU.. just be creative!
== Euler Tours
- For every edge delete it and recurse on it
- When the function exits add V to the answer

== Implicit tree
If there are only $k$ important nodes on a tree, we can make an implicit tree by consider the adjacent (by preorder) lcas of those $k$ nodes.

== König's Theorem
It claims that the max matching is equal to the min vertex cover in case of a bipartite graph. Additionally, the maximum independent set is just the opposite of the min vertex cover.

$
I(G) = |G| - M(G)
$

Additionally, after a maximum matching is found, one can simply run a dfs from all the unmatched nodes on the LHS. The min vertex cover will simply be all the unvisited nodes on the LHS and the visited nodes on the RHS. The max independent set will be the complement of the min vertex cover. By careful when running the dfs: from right to left *only* walk the *matched* edges.

== Euler's Formula
For a planar graph, $V - E + F = 2 = 1 + "num components"$. The formula goes both ways.

If $G$ has no bridges, then every face is bounded by a cycle (each edge included exactly once).

Every cycle in a bipartite graph is of even length.

$K_(3,3)$ and $K_5$ are the building blocks of all non-planar graphs.

== Max flow
BFS a path and augment it. Add the minimum possible flow along that path. Make sure to keep track of both the flow and the capacity. There is also Dinic's, but it might be hard to implement.

== 2-Sat
Obviously we want to state explode $x_i$ into $x_i$ and $not x_i$ first. Then we run SCC. For a solution to exist, it is *necessary and sufficient* for $x$ and $not x$ to be in different components.
We can then simply do a top sort of the DAG. If $x$ comes before $not x$, then $x = "false"$, otherwise $x = "true"$.

== Maximum matching
Just trivially do it. Go through every possible potential partner, if not matched, then match, otherwise, try to free up.

== SCCs (Tarjan's)
Within a single dfs:
- Keep a counter and a stack
- Whenever we enter a node, add it to the stack, increment counter and assign $L_i = "counter"$
- Then, $L_i = min L_j "for all children" j$ *that is on the stack*
- If $L_i$ is the same before and after, then we can generate a connected component by popping off nodes from the stack until we pop off node $i$.
