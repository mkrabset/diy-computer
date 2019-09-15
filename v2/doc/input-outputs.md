## Input/Outputs

### PC
#### Inputs
##### Control signals from decoder
* reset
* cnt
* jump-cond #0
* jump-cond #1
* jump-cond #2
* jump-cond #3
##### Control signals from I/O-decoder
* load_high (active low)
* load_low (active low)
##### Status flags from ALU
* carry
* overflow
* zero
* neg
##### Other
* 8-bits (bus) for receiving jump address from RAM (high or low)
* CLK
##### Outputs
* 16 bit program-counter address to MUX


### MUX
#### Inputs
##### Control signals from decoder
* select - for selecting between 16-bit output from PC or SP, (low means SP, high means PC)
##### Address data from PC/SP
* 16 bits from PC
* 16 bits from SP
#### Outputs
* 16 bits SP/PC to MAR (and also to BUS via MUXHAT)


### MUXHAT
#### Inputs
##### Control signals from decoder
* select - byte select (low outputs high byte, high output low byte)
##### Control signal from I/O decoder
* out - Output enable to bus (active low)
##### Address data from PC/SP (via MUX)
* 16 bits from SP or PC depending on MUX.select
#### Outputs
* 8 bits to bus


### MAR
#### Inputs
##### Control signals from decoder
* load_high - load high address from bus or MUX (active low)
* load_low - load low address from bus or MUX (active low)
(loading will be from the MUX when both load signals are active eg. LOW. 
When only one of these signals is LOW, loading will be from the bus)
* cnt - count incrementally (active high)
##### Control signal from I/O decoder
* load_offset (active low)
##### Other
* CLK
##### Address data from PC/SP (via MUX)
* 16 bits from SP or PC depending on MUX.select
##### Address byte from bus
* 8 bits from bus
##### Offset byte from bus
* 8 bits from bus
#### Outputs
* 16 bits memory address to RAM


### RAM
#### Inputs
##### Control signal from I/O decoder
* bus2ram - transfer bus value to ram (active low)
* ram2bus - transfer ram value to bus (active low)
##### Hard config (soldering or jumber)
* bank select
#### Inputs/Outputs
##### Transfer ram value to/from bus
* 8 bits to/from bus


### SP
#### Inputs
##### Control signals from decoder
* dir - count direction (push/pop) (high means count up, low means count down)
* cnt - count enable (active low)
* reset - reset to 0000 (active low)
##### Other
* CLK
#### Outputs
* 16 bit stackpointer address to MUX


### INSTREG
#### Inputs
##### Control signals from decoder
* cont - continue to next instruction (active low)
##### Control signals from I/O decoder
* load - load next instruction from bus (RAM) (active low)
#### Outputs
* 13 bits to decoder, 1 bit is jumper configurable (A12)


### REGISTERS (x,y,z,tmp)
#### Inputs
##### Control signals from I/O decoder
* EN - write register value to bus (active low)
* LOAD - read register value from bus (active low)
##### Others
* CLK
#### Inputs/Outputs
* 8 bits to/from bus


### OUTPUT-REGS (0,1,2) 
#### Inputs
##### Control signals from I/O decoder
* load - loads register with bus value
##### Bus
* 8 bits bus to read from

### ALU
#### Inputs
##### Control signals from decoder
* cs - set carry (active high)
* cc - clear carry (active high)
* flagw - update flags (active high)
* op0 - Operation select 0
* op1 - Operation select 1
* floor - floor select (low means 1.st floor, high means 2nd floor)
##### Control signals from I/O decoder
* OE - write result to bus (active low)
##### Others
CLK
##### Operand inputs
* 8 bits operand A input
* 8 bits operand B input
#### Outputs
##### Flags (to PC module)
* carry
* overflow
* zero
* neg
##### Result
* 8 bits result to bus


### ALUREGS
#### Inputs
##### Control signals from decoder
* invb - Invert B value
##### Control signals from I/O decoder
* load_a - Load A from bus (active low)
* load_b - Load B from bus (active low)