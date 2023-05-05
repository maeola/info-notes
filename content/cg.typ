= Comp Geom
Everything in comp geom is pretty much grade 5 maths. Just consider everything in vectors and spam dot products and you're good to go.
== Upper Convex Hull
Sort points by $x$, then loop from left to right maintaining decreasing gradients.
== Convex Hull (Graham's scan)
Get an extreme point $p_e$ in one dimension, tiebreak by other dimension. Then, sort all other points by the angle they make with $p_e$. Loop through them in order, and maintain monotone adjacent cross products (so that the points only ever turn in one direction).
== Shoelace
This finds the area of a polygon given the vertices.
$
|(sum_(i,j)^"cyclic" (x_j - x_i) (y_i + y_j))/2|
$
== Closest pair
Just DNC and you're done. Make sure to solve left and right first to get answer $d$ so that you can use $d$ for $O(n)$ merging.
== Minimum enclosing circle (Welzl's)
```rs
fn f(points, contain) -> Circle {
    if points is empty or |contain| >= 3 {
        return circle formed by contain
    }
    let p = random point from points
    let circ = f(points - p, contain)
    if p in circ {
        return circ
    }
    return f(points - p, contain + p)
}
```
Note that extending to higher dimensions is difficult as the constant factors increase exponentially.
