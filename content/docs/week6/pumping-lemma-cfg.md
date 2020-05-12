## Pumping lemma for context free grammars
### Theorem
If {{< katex >}}\forall P \geq1{{< /katex >}}, {{< katex >}}\exists w \in L{{< /katex >}} with {{< katex >}}|w| \geq P{{< /katex >}} s.t for all decompositions w=uvxyz with {{< katex >}}|vxy| \leq P{{< /katex >}}  and {{< katex >}}|vy| \geq 0{{< /katex >}}, there is some {{< katex >}}k \geq 0{{< /katex >}} {{< katex >}}uv^kxy^kz{{< /katex >}} {{< katex >}}\notin{{< /katex >}} L, then L is not regular.

> In other words, there exists a pumping length {{< katex >}}P{{< /katex >}} that is greater than 1. For all strings w that is in the language L with a length |w| greater than p, you can split into 5 parts {{< katex >}}w = uvxyz{{< /katex >}} in a way that the following must be true:
> 1. {{< katex >}}vy{{< /katex >}} cannot both be empty
> 2. The length of {{< katex >}}vxy\leq P{{< /katex >}}
> 2. {{< katex >}}uv^ky^kz{{< /katex >}}  is in the language L for every {{< katex >}}k{{< /katex >}}


### Steps to prove that a Language is not Context Free (Contrapositive):
 1) Adversary picks an arbitrary {{< katex >}}P \geq 1{{< /katex >}}
2) You design a string {{< katex >}}w\in L{{< /katex >}} with {{< katex >}}|w| >= P{{< /katex >}}
3) Adversary splits {{< katex >}}w=uvxyz{{< /katex >}} with {{< katex >}}|vy| >= 0{{< /katex >}} and {{< katex >}}|vxy| \leq P{{< /katex >}}
4) You pick k >= 0 such that {{< katex >}}uv^ky^kz \notin L{{< /katex >}} 

If you can always do this, then L is not context free.

Examples
---

#### Example 1 of pumping lemma 
{{< katex >}}A = \lbrace0^n1^n2^n \vert n >= 0\rbrace = \lbrace \epsilon, 012, 001122, 000111222\rbrace{{< /katex >}}

Proof:
1) **Adversary picks an arbitrary {{< katex >}}P \geq 1{{< /katex >}}**
2) **You design a string {{< katex >}}w\in L{{< /katex >}} with {{< katex >}}|w| >= P{{< /katex >}}**
	We pick a string {{< katex >}}w{{< /katex >}} according to the pumping length P that the adversary picked.
	Pick {{< katex >}}w = 0^P1^P2^P{{< /katex >}} 
3) **Adversary splits {{< katex >}}w{{< /katex >}} into 5 parts, {{< katex >}}w=uvxyz{{< /katex >}}, while following the rules below:**
	- {{< katex >}}|vy| > 0{{< /katex >}}
	-  {{< katex >}}|vxy| \leq P{{< /katex >}}
	
	**Note:**  **You cannot pick P, the adversary picks P.** 
    
    For illustration purposes, let {{< katex >}}P = 3{{< /katex >}}. The resulting string {{< katex >}}w{{< /katex >}} = 000111222

	Because {{< katex >}}|vxy| \leq P \leq 3{{< /katex >}} , {{< katex >}}vy{{< /katex >}} cannot contain both 0,1,2 simultaneously. 

	Furthermore, because {{< katex >}}|vy| \geq0{{< /katex >}},  either {{< katex >}}v{{< /katex >}} or {{< katex >}}y{{< /katex >}} must contain a character. 
    
    There are no restrictions on {{< katex >}}u{{< /katex >}} and {{< katex >}}z{{< /katex >}}

	Here are a few possible ways this string {{< katex >}}w{{< /katex >}} can be split, there are many more:

|cases|u|v|x|y|z
|-|-|-|-|-|-|
|1|000|1|1|1|222|
|2|00011|1|2|2|2|
|3|0|0|0|1|11222|
|4|000||1|11|222|
|5|000|1|11||222|
|6|0001|1|1||222|
|7|0001|11|||222|
|8|00011|1|||222|
|9|000111|2|2|2||
|10|00011122|||2||
|11|00011122|2||||

4) **You pick k >= 0 such that {{< katex >}}uv^ky^kz \notin L{{< /katex >}}**
	Let {{< katex >}}k=2{{< /katex >}}, then

	For example, apply {{< katex >}}k=2{{< /katex >}} to case 1

|cases|u|{{< katex >}}v^2{{< /katex >}}|x|{{< katex >}}y^2{{< /katex >}}|z
|-|-|-|-|-|-|
|1|000|11|1|11|222|
	
For each of these above cases, if you apply {{< katex >}}k=2{{< /katex >}},   {{< katex >}}uv^2xy^2z \notin L{{< /katex >}}

To generalize this, you can say that {{< katex >}}uv^ky^kz{{< /katex >}} is not in the language L because we cannot simultaneously increase 0,1,2 {{< katex >}}k{{< /katex >}} times which means we get a different number of 0's, 1's, or 2's
