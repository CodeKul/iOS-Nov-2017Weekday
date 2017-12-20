//: Playground - noun: a place where people can play

import UIKit

var a = 10, b = 20;
//Assignment
    // =

var c = 0

//Arithmetic
    /*
         +
         -
         *
         /
         %
     */

c = a + b
c = a - b
c = a * b
c = a / b
c = a % b

//Compound Assignment
/*
     +=
     -=
     *=
     /=
     %=
 */

c += a  // c = c + a
c -= b  // c = c - b
c *= a
c /= b
c %= a

//Comparison
/*
     <
     >
     ==
     !=
     <=
     >=
 */

var bool = a < b
bool =  a > b
bool = a == b
bool = a != b
bool = a <= b
bool = a >= b

//Ternary Operator

c = a > b ? 10 : 20

//Logical Operators
/*
     &&
     ||
     !
 
     p  q   &&  ||  !p
     0  0   0   0   1
     0  1   0   1   1
     1  0   0   1   0
     1  1   1   1   0
 */

c = (a > b) || !(b != a) ? 10 : 20
