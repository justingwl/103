---
title: PDA intro
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
A PDA (nondeterministic by default) is a 6-tuple $(Q, \Sigma, \Gamma, \delta, q_0, F)$ where:
- Q is a finite set of states
- $\Sigma$ is a finite input alphabet
- $\Gamma$ is a finite stack alphabet
- $\delta : Q \times (\Sigma \cup \{\epsilon\})\times(\Gamma\cup\{\epsilon\})->P(Q\times(\Gamma\cup\{\epsilon\}))$
		-  "(The current states Q $\times$ input symbol) (stack symbol to pop) -> powerset of {next state $\times$ stack of symbols to push}"
		-  
- $q_0 \in Q$ is the start state
- $F \subset Q$ is the set of accepting states

# Summary
- Can have multiple transitions for a single input
- The Stack does not need to be empty for the PDA to accept
- Deterministic PDA's **are not as powerful** as nondeterministic, unlike NFAs which are equivalent to DFAs