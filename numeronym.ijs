NB. Numeronym example
NB. Taken from http://www.infoq.com/presentations/j-language
NB.
NB. Jordan Scales <scalesjordan@gmail.com>
NB. 29 Mar 2014

first =: {.
last  =: {:

NB. `2:` denotes a constant 2
lengthLess2 =: (#-2:)

NB. [: X Y Z applies X to the result of the train Y Z
NB. ": formats to a string that can be concatenated
numeronym =: (first, ([: ": lengthLess2), last)

NB. numeronym 'helloworld' => h8d
NB. numeronym 'hi' => h0i
NB. let's only apply numeronym if the length is > 3

long =: (#>3:)

NB. X1`X2`X3`... @. N applies the Nth verb
n7m =: ]`numeronym @. long

NB. n7m 'helloworld' => h8d
NB. n7m 'hi' => hi

NB. In true J style, we can substitute our verbs in
numeronym =: ]`({., ([: ": #-2:), {:) @. (#>3:)

NB. numeronym 'helloworld' => h8d
NB. numeronym 'hi' => hi

NB. ;: takes a string and puts each word in a box
NB. >  opens a box
NB. X & Ys composes X over each Y

NB. numeronym &> ;:'alphabetize if you will'
NB.   a9e
NB.   if
NB.   you
NB.   w2l
