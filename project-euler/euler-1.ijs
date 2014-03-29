NB. Project Euler 1 Solution
NB. Jordan Scales <scalesjordan@gmail.com>
NB. 29 Mar 2014
NB.
NB. http://projecteuler.net/problem=1
NB. Find the sum of all the multiples of 3 or 5 below 1000.

NB. X | Y1 Y2 Y3... computers X mod Y for each Y
NB.
NB. X&Y Z is X Y Z
NB. This allows us to bind a dyad
NB.
NB. (3|&) 1 2 3
NB.   1 2 0
NB.
NB. (0=&) checks if each item is equal to 0
NB. (0=&) 1 0 2 0 3
NB.   0 1 0 1 0

NB. divBy3 i.10
NB.   1 0 0 1 0 0 1 0 0 1
divBy3 =: 0=3&|

NB. divBy5 i.10
NB.   1 0 0 0 0 1 0 0 0 0
divBy5 =: 0=5&|

NB. +. is the GCD operator
NB.   but acts as a logical OR
NB.
NB. divBy3Or5 i.10
NB.   1 0 0 1 0 1 1 0 0 1
divBy3Or5 =: divBy3 +. divBy5

NB. >: increments each item
NB. i.10
NB.   0 1 2 3 4 5 6 7 8 9
NB. >: i.10
NB.   1 2 3 4 5 6 7 8 9 10
NB.
NB. * can multiply the items in each list
NB. 1 2 3 * 5 6 7
NB.   5 12 21
NB.
NB. +/ sums a list
NB.
NB. To get our solution:
NB.   We first filter the numbers divisible by 3 or 5
NB.   Then multiply this list of 0s and 1s against our original list
NB.   And sum it.
solution =: +/ (divBy3Or5 * ]) >: i.999

NB. Now we can substitute each verb back in
solution =: +/(((0=3&|)+.(0=5&|))*])>:i.999
