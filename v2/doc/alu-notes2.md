# ALU Notes

### 1st floor
#### Functions
* ADD 
* SUBTRACT
* NOT - Set B=NOT(input), A=0, and add without carry
* ROL - Set A=B=input, add with carry flag value

#### Misc
* Use 2*74LS283 for the arithetic operations
* Overflow, Zero, Negative flag detection and flag latches.
* Also needs 2*74ls157 to select between floor and second floor

### 2nd floor
#### Functions
* AND
* OR
* XOR
* ROR

#### Misc
Need 4 * 74ls153 to select what function to output.

### 3rd floor
Display of input, output and flags