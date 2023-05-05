= Maths
== Extended GCD
#lorem(30)
== Modular Inverses
To find a large prime, just run `openssl prime -generate -bits <nbits>`. 

Note that finding the inverse of $a mod m$ is possible with Extended GCD:
$
a x + m y &= 1 \
=> a x &= 1 mod m
$

If $m$ is prime, then $a dot.op a^(m - 2) = 1$ by fermat's little theorem. Otherwise, we can do:
```cpp
int inv(int i)
{
    return i <= 1 ? i : m - (ll)(m / i) * inv(m % i) % m;
}
```
as
$
& quad quad quad quad quad m &= floor(m/i) i + m%i \
&=> m % i &= -floor(m/i) i quad &(mod m) \
&=> (m % i) i^(-1) &= -floor(m/i) quad &(mod m) \
&=> i^(-1) &= -floor(m/i) (m%i)^(-1) quad &(mod m) \
$
== Generating Functions
They are simply functions whose coefficients represent something. For example, the coefficient of $x^k$ in $(1+x^a)(1+x^b)(1+x^c)$ describes the number of ways $a$, $b$, $c$ can add up to $k$. They can also be infinite, for example:
$
f(x) &= 1 + x + 2 x^2 + 3 x^3 + 5 x^4 + 8 x^5 + ... \
=> f(x) - f(x) x - f(x) x^2 &= 1 \
=> f(x) = 1 / (1-x-x^2)
$
And from there, you can split $f(x)$ into partial fractions and derive a closed formula for the $i^"th"$ coefficient of $f(x)$.

== FFT
#lorem(30)
== Extra polynomial operations
== Lagrange Interpolation
#lorem(30)
