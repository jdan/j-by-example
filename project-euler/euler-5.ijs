NB. Project Euler 5 Solution
NB. Jordan Scales <scalesjordan@gmail.com>
NB. 29 Mar 2014
NB.
NB. http://projecteuler.net/problem=5
NB. What is the smallest positive number that is evenly divisible
NB. by all of the numbers from 1 to 20?

NB. The smallest number that satisfies this condition is the least
NB. common multiple (LCM) of each of the numbers 1 through 20.
NB.
NB. *. is the LCM operator, we can simply map it over one through 20
NB. >: increments each item in the list
NB. i. returns the integers 0 up to (but not including n)

solution =: *./>:i.20
