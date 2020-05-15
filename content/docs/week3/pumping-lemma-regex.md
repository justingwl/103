---
title: Regex Pumping Lemma
weight: 2
---

# How to use the pumping lemma

The pumping lemma can only be used to prove that is language is **not regular**. **It cannot be used to prove that a language is regular.**

To use the pumping lemma, you need to understand what a regular language is.
## What is a regular language?
A language is said to be a `regular language` if and only if some Finite State Machine recognizes it.

Finish state machines cannot recognize languages that require:
1. memory 
2. storing or counting strings

### Example of non-regular languages

|Non-regular|Reason|
|----------------|-------------------------------|-----------------------------|
|ababbababb|the rule that the language follows is `ababb` repeated, FSM cannot store a string to be repeated|
|{{< katex >}}a^nb^n{{< /katex >}}|same number of a's and b's, FSM cannot keep count

## Pumping lemma for regular languages
If {{< katex >}}\forall n \geq1{{< /katex >}}, {{< katex >}}\exists w \in L{{< /katex >}} with {{< katex >}}|w| \geq n{{< /katex >}} s.t for all decompositions w=xyz with y {{< katex >}}\neq \epsilon{{< /katex >}}  and {{< katex >}}|xy| \leq n{{< /katex >}}, there is some {{< katex >}}k \leq 0{{< /katex >}} {{< katex >}}xy^kz{{< /katex >}} {{< katex >}}\notin{{< /katex >}} L, then L is not regular.

> In other words, for any {{< katex >}}n{{< /katex >}} that is greater than 1 and any string {{< katex >}}w{{< /katex >}} that is in the language with its length >= n. We "split" {{< katex >}}w{{< /katex >}} into three parts, {{< katex >}}w=xyz{{< /katex >}} where you do not break the following rules: 
> 1. {{< katex >}}y{{< /katex >}} cannot be an empty string
> 2. The length of xy is {{< katex >}}\leq n{{< /katex >}}
> 3. {{< katex >}}xy^kz{{< /katex >}} is in the Language {{< katex >}}L(A){{< /katex >}} for every {{< katex >}}k{{< /katex >}}

### Steps to prove that a language is not Regular (Contrapositive):
  
 1) Adversary picks an arbitrary n.
2) You design a string {{< katex >}}w\in L{{< /katex >}} with |w| >=n
3) Adversary splits w=xyz with y != {{< katex >}}\epsilon{{< /katex >}} and |xy| >=n
4) You pick k >= 0 such that {{< katex >}}xy^kz{{< /katex >}} {{< katex >}}\notin L{{< /katex >}} 

If you can always do this, then L is not regular.

Example Problems
---

#### Example 1 of pumping lemma: counting
A = {{{< katex >}}0^m{{< /katex >}}{{< katex >}}1^m{{< /katex >}} | m >= 0} = {{{< katex >}}\epsilon{{< /katex >}}, 01, 0011, 000111}

Proof:
1. Adversary picks *n*
2.  We pick a string *w* according to what the adversary picked

	We pick the string
	 *w* =  {{< katex >}}0^n{{< /katex >}}{{< katex >}}1^n{{< /katex >}} = 00000...1111....

	The following table is a representation of the string *w* and will be useful in the next step.
	 
|Length = n|Length = n|
|----------------|----------------|
|0000...|1111...|

3. Adversary splits {{< katex >}}w=xyz{{< /katex >}} where these **rules**, as stated previously, are followed:

	-  y  cannot be an empty string
	-  The length of xy is  {{< katex >}}\leq n{{< /katex >}}
	- {{< katex >}}xy^kz{{< /katex >}}  is in the Language  L(A)  for every  {{< katex >}}k{{< /katex >}}

	Because the length of xy must be less than or equal to n, the adversary can only split the string *w* in 2 ways.

	Case 1: *y* "covers"  both 0's and 1's

	Case 2: *y* "covers" only 1's

	~~Case 3: *y* "covers"  only 0's~~

	~~Case 4: *y* "covers" nothing~~
	> Case 3 cannot happen because |xy| would be greater than *n* which violates one of three rules.
Case 4 cannot happen because *y* cannot be empty.

**Note:** **You cannot pick n, the adversary does.** But for illustration purposes, let n = 3. The resulting string w = 000111

|cases|x|y|z|
|----------------|----------------|-------------------------------|-----------------------------|
|1|00|01|111|
|2|000|1|11|


4) You pick k >= 0 such that {{< katex >}}xy^kz{{< /katex >}} {{< katex >}}\notin L{{< /katex >}} 

	In both of the two cases, we are able to pump the string *y*, *k* number of times such that {{< katex >}}xy^kz{{< /katex >}} {{< katex >}}\notin L{{< /katex >}} 

	Let's try pumping case 1 where x = 00, y = 01, z = 111 (Refer to the diagram above)

	 Let *k = 2*. Then {{< katex >}}xy^2z=xyyz={{< /katex >}} 00 01 01 111

	{{< katex >}}xyyz{{< /katex >}} {{< katex >}}\notin L{{< /katex >}}  because the number of 0's are less than the number of 1's
