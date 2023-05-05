= Strings
== Tries
Self explanatory.
== Suffix arrays
We can sort the suffixes of a string/list of items in their lexicographical order. To do that, we first sort the indices by the 1 sized substrings they represent. Then using the sorted ranks, we can sort the indices by the 2 sized substrings they represent by sorting a pair $(a, b)$ where $a$ represents the rank of the first half of the substring and $b$ represents the second half. Note that intermediate ranks are also valuable in many computations. For instance, one can trivially apply a sparse table query over the ranks.
== Hashing
We can hash a list of items with a polynomial:
$
"hash"(x_1, x_2, x_3, ..., x_N) = (x_1 + x_2 k + x_3 k^2 + ... + x_N k^(N-1)) thick mod M
$
Normally we just grab a large prime for $M$ (and a smaller prime for $k$) as we can calculate modular inverses quickly with a prime mod.
== Z
#lorem(20)
== Palindrome tree
