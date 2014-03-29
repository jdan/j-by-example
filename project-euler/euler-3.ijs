NB. Project Euler 3 Solution
NB. Jordan Scales <scalesjordan@gmail.com>
NB. 29 Mar 2014
NB.
NB. http://projecteuler.net/problem=3
NB. What is the largest prime factor of the number 600851475143?

NB. q: generates the prime factores
NB. >. is the max between two numbers (dyad)
NB. Y/ X1 X2 ... allows us to reduce Y over each X
NB.
NB. Thus, >./ computes the max element in a list

solution =: >./q:600851475143
