---
title: Regex Intro
weight: 1
---

# 2020 04 15: Basics of Regular Expressions

## Definition
### A regular expression over {{< katex >}}\Sigma{{< /katex >}} is an expression of the form:

|                |                          |
|----------------|-------------------------------|-----------------------------|
|a where {{< katex >}} ( a \in \Sigma ) {{< /katex >}}|`matches a`            
|{{< katex >}} \varepsilon {{< /katex >}}|`matches an empty string`|
|{{< katex >}}\varnothing{{< /katex >}}|`matches ` {{< katex >}}R_1{{< /katex >}} or {{< katex >}}R_2{{< /katex >}} |
|{{< katex >}}R_1{{< /katex >}}{{< katex >}}R_2{{< /katex >}}|`matches ` {{< katex >}}R_1{{< /katex >}}{{< katex >}}R_2{{< /katex >}} |
|{{< katex >}}R^*{{< /katex >}} where {{< katex >}}R{{< /katex >}} is a regular expression|`matches` {{< katex >}}R^*{{< /katex >}}|

## Regular Expressions Examples
|Regular Expression|Meaning|
|----------------|-------------------------------|-----------------------------|
|{{< katex >}}z^*{{< /katex >}}|`zero or more z's`|
|{{< katex >}}a^*a{{< /katex >}}|`one or more a's, no other symbols {a, aa, aaa, ...}`            
|{{< katex >}}(a{{< /katex >}} \| {{< katex >}}b)^*{{< /katex >}}|`matches any string consisting of a's or b's {epsilon, a, b, ab, ba, abab, ...}`|
|{{< katex >}}a^*b^*{{< /katex >}}|`matches zero of more a's followed by zero or more b's {epsilon, a, b, aabb, abb, ..}`|
|{{< katex >}}\epsilon{{< /katex >}} \| {{< katex >}}(z(z^*)){{< /katex >}}|`matches nothing or, 1 or more z's ` NOTE: The procedure is to first perform the star operation, then concatenate the z's, and finally union |


## Theorem
### A Language can be described as a regular expression R if and only if it is regular.
Sketch of the proof found in [2020_04_15.pdf]([[https://canvas.ucsc.edu/courses/32038/files/2179079?module_item_id=176053](https://canvas.ucsc.edu/courses/32038/files/2179079?module_item_id=176053)](https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730)) and [2020_04_17.pdf]([https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730](https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730))


## Resources
[http://www.jflap.org/tutorial/regular/index.html](http://www.jflap.org/tutorial/regular/index.html)
