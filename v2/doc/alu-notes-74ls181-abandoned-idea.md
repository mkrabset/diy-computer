# ALU notes

Two 74LS181s can be used for the ALU. This is how:

## Addition
Carries (both in and out) are inverted, so LOW means carry and HIGH means no carry.

* CARRY_IN (pin7) needs to be HIGH for no carry, or LOW for carry.
* MODE (pin8) needs to be set to LOW for arithmetic mode.
* Function select set to 1001

## Subtraction
Since we already have a operand register with capability to invert the b-operand bits,
we can do as in version 1; invert the bits and set the carry, eg. set CARRY_IN to LOW, 
(since the 74181 operates with active low carries).

## AND 
Set MODE to HIGH (logic), and function select to 1011 (s3-s0 in that order)

## OR
Set MODE to HIGH (logic), and function select to 1110 (s3-s0 in that order)

## XOR
Set MODE to HIGH (logic), and function select to 0110 (s3-s0 in that order)

## NOT
Invert B in operand register, set A=0, and use addition without carry.

## ROL
Can be done on 74LS181 by performing addition A+B (where A=B=input)

## ROR
Can NOT be done on 74LS181. Must be done outside. Need two 74LS157 for this. Plus some ics to evaluate source-select.


## Overflow detection
Overflow can be detected for signed operations by evaluating the expression:

* V = !(a_msb ^ b_msb) & (a_msb ^ r_msb)

## Comparing values
To compare values, do a subtraction (a-b), and evaluate status flags in the following manner:
* Z = !(b0|b1|b2...). 
* N = r7 (msb of result)

