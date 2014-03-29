NB. Project Euler 6 Solution
NB. Jordan Scales <scalesjordan@gmail.com>
NB. 29 Mar 2014
NB.
NB. http://projecteuler.net/problem=6
NB. Find the difference between the sum of the squares of the first one
NB. hundred natural numbers and the square of the sum.

NB. *: squares a number
NB. [: X Y applies the result of Y to X
sumOfSquares =: [: +/ *:
squareOfSum  =: [: *: +/

solution =: (squareOfSum - sumOfSquares) >: i.100

NB. We can replace our verbs
solution =: (([:*:+/)-[:+/*:) >:i.100
