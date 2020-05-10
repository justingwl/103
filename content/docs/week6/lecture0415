# 2020 04 15: Basics of Regular Expressions

## Definition
### A regular expression over $\Sigma$ is an expression of the form:
|                |                          |
|----------------|-------------------------------|-----------------------------|
|a where (a $\in$ $\Sigma$)|`matches a`            
|$\varepsilon$|`matches an empty string`|
|$\varnothing$|`matches ` $R_1$ or $R_2$ |
|$R_1$$R_2$|`matches ` $R_1$$R_2$ |
|$R^*$ where $R$ is a regular expression|`matches` $R^*$|

## Regular Expressions Examples
|Regular Expression|Meaning|
|----------------|-------------------------------|-----------------------------|
|$z^*$|`zero or more z's`|
|$a^*a$|`one or more a's, no other symbols {a, aa, aaa, ...}`            
|$(a$ \| $b)^*$|`matches any string consisting of a's or b's {epsilon, a, b, ab, ba, abab, ...}`|
|$a^*b^*$|`matches zero of more a's followed by zero or more b's {epsilon, a, b, aabb, abb, ..}`|
|$\epsilon$ \| ($z$($z^*$))|`matches nothing or, 1 or more z's ` NOTE: The procedure is to first perform the star, then concatenate the z's, and finally union |



## Theorem
### A Language can be described as a regular expression R if and only if it is regular.
Sketch of the proof found in [2020_04_15.pdf]([[https://canvas.ucsc.edu/courses/32038/files/2179079?module_item_id=176053](https://canvas.ucsc.edu/courses/32038/files/2179079?module_item_id=176053)](https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730)) and [2020_04_17.pdf]([https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730](https://canvas.ucsc.edu/courses/32038/files/2193140?module_item_id=176730))


## Resources
[http://www.jflap.org/tutorial/regular/index.html](http://www.jflap.org/tutorial/regular/index.html)
