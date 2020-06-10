---

---


# Computability Theory
L 05/27
**Definition:** 
The runtime of a TM on a given input is the number of steps of execution (i.e transitions) taken before the TM halts.

**Definition:** 
{{< katex >}}TIME(f(n)){{< /katex >}} is the class of languages which can be decided by a TM whose runtime on any input of length {{< katex >}}n{{< /katex >}} is {{< katex >}}O(f(n)){{< /katex >}}

**Theorem:** 
If {{< katex >}}L{{< /katex >}} is regular, {{< katex >}}L \in TIME(n){{< /katex >}}. (take the DFA as your TM)

**Definition:** 
{{< katex >}}P = \bigcup_{k\geq0} TIME(n^k){{< /katex >}} is the class of problems solvable in polynomial time

**Definition:** 
A polynomial time reduction (Karp reduction) is a mapping reduction where the function {{< katex >}}f: \Sigma^* -> \Sigma^*{{< /katex >}} can be computed in polynomial time. If such a reduction from {{< katex >}}A{{< /katex >}} to {{< katex >}}B{{< /katex >}} exists, we say {{< katex >}}A%{{< /katex >}} is polynomial time reducible to B, {{< katex >}}A \leq_p B{{< /katex >}}

**Theorem:** 
If {{< katex >}}A \leq_p B{{< /katex >}} and {{< katex >}}B \in P{{< /katex >}}, then {{< katex >}}A \in P{{< /katex >}}.

"If language A is poly time reducible to a langauge B already known to have a poly time solution, we obtain a poly time solution to the original language A."

L 05/29
**Note:**
It's possible to convert (in poly time) any SAT formula to 3SAT, preserving satisfiability

**Note:**
If there are n variables, there are {{< katex >}}2^n{{< /katex >}} possible assignments. Checking satisfiability (Deciding SAT) seems to require searching through this exponentially -large space. But verifying a candidate satisfying assignmnet is easy: Just plug it into the formula. Many other problems have this property: verifying solutions is easy

**Definition:**
A polynomial-time verifier for L is a TM {{< katex >}}V(x,y){{< /katex >}} that runs in polynomial time in {{< katex >}}|x|{{< /katex >}} ( not {{< katex >}}|y|{{< /katex >}}) and satisfies: {{< katex >}}L = \{ x |  \exist y{{< /katex >}}. Certificate for x {{< katex >}}V{{< /katex >}} accepts {{< katex >}}<x,y>{{< /katex >}}

**Definition:**
NP is the class of languages which have polynomial-time verifiers.

**Theorem:**
NP is also the class of languages decidable by a nondeterministc TM in polynomial time

L 06/01
**Definition:**
 A language L is NP-complete if both:
1. {{< katex >}}L \in NP{{< /katex >}}
2. {{< katex >}}\forall M \in NP, M \leq_p L{{< /katex >}} (L is NP-hard)

**Cook-levin Thm:**


**Theorem:**
If {{< katex >}}A \leq_p B{{< /katex >}} and {{< katex >}}A{{< /katex >}} is NP-hard, so is {{< katex >}}B{{< /katex >}}

**Corollary:**
If {{< katex >}}A \leq_p B{{< /katex >}}, {{< katex >}}A{{< /katex >}} is NP-hard, and {{< katex >}}B \in{{< /katex >}} NP then B is NP-complete.

**Theorem:**
CLIQUE is NP-complete

SAT is NP-complete
