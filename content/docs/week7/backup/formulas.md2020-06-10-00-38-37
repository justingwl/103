---

---


# Computability Theory
L 05/27
**Definition:** 
The runtime of a TM on a given input is the number of steps of execution (i.e transitions) taken before the TM halts.

**Definition:** 
$TIME(f(n))$ is the class of languages which can be decided by a TM whose runtime on any input of length $n$ is $O(f(n))$

**Theorem:** 
If $L$ is regular, $L \in TIME(n)$. (take the DFA as your TM)

**Definition:** 
$P = \bigcup_{k\geq0} TIME(n^k)$ is the class of problems solvable in polynomial time

**Definition:** 
A polynomial time reduction (Karp reduction) is a mapping reduction where the function $f: \Sigma^* -> \Sigma^*$ can be computed in polynomial time. If such a reduction from $A$ to $B$ exists, we say $A%$ is polynomial time reducible to B, $A \leq_p B$

**Theorem:** 
If $A \leq_p B$ and $B \in P$, then $A \in P$.

"If language A is poly time reducible to a langauge B already known to have a poly time solution, we obtain a poly time solution to the original language A."

L 05/29
**Note:**
It's possible to convert (in poly time) any SAT formula to 3SAT, preserving satisfiability

**Note:**
If there are n variables, there are $2^n$ possible assignments. Checking satisfiability (Deciding SAT) seems to require searching through this exponentially -large space. But verifying a candidate satisfying assignmnet is easy: Just plug it into the formula. Many other problems have this property: verifying solutions is easy

**Definition:**
A polynomial-time verifier for L is a TM $V(x,y)$ that runs in polynomial time in $|x|$ ( not $|y|$) and satisfies: $L = \{ x |  \exist y$. Certificate for x $V$ accepts $<x,y>$

**Definition:**
NP is the class of languages which have polynomial-time verifiers.

**Theorem:**
NP is also the class of languages decidable by a nondeterministc TM in polynomial time

L 06/01
**Definition:**
 A language L is NP-complete if both:
1. $L \in NP$
2. $\forall M \in NP, M \leq_p L$ (L is NP-hard)

**Cook-levin Thm:**


**Theorem:**
If $A \leq_p B$ and $A$ is NP-hard, so is $B$

**Corollary:**
If $A \leq_p B$, $A$ is NP-hard, and $B \in$ NP then B is NP-complete.

**Theorem:**
CLIQUE is NP-complete

SAT is NP-complete
