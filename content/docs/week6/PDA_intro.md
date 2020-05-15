---
title: PDA Intro
weight: 1
---
# Push Down Automata

[Lecture 04 29]([https://canvas.ucsc.edu/courses/32038/files/2262788?module_item_id=181955](https://canvas.ucsc.edu/courses/32038/files/2262788?module_item_id=181955))
- PDA example
- PDA definition
- PDA accept definition
- PDA language definition
	- Proof: Given a CFG for L, construct a PDA
	- Proof: Given a PDA P for L, construct a CFG

## Definiton
A PDA (nondeterministic by default) is a 6-tuple {{< katex >}}(Q, \Sigma, \Gamma, \delta, q_0, F){{< /katex >}} where:
- Q is a finite set of states
- {{< katex >}}\Sigma{{< /katex >}} is a finite input alphabet
- {{< katex >}}\Gamma{{< /katex >}} is a finite stack alphabet
- {{< katex >}}\delta : Q \times (\Sigma \cup \{\epsilon\})\times(\Gamma\cup\{\epsilon\})->P(Q\times(\Gamma\cup\{\epsilon\})){{< /katex >}}
		-  "(The current states Q {{< katex >}}\times{{< /katex >}} input symbol) (stack symbol to pop) -> powerset of {next state {{< katex >}}\times{{< /katex >}} stack of symbols to push}"
		-  
- {{< katex >}}q_0 \in Q{{< /katex >}} is the start state
- {{< katex >}}F \subset Q{{< /katex >}} is the set of accepting states

# Summary
- Can have multiple transitions for a single input
- The Stack does not need to be empty for the PDA to accept
- Deterministic PDA's **are not as powerful** as nondeterministic, unlike NFAs which are equivalent to DFAs
