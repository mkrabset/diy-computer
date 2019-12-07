cs_start:
JSR checksum

prog_start:
JMP prog_start

cs_end:

checksum:
  LDX cs_start_ptr+1
  STX checksum_curr_ptr+1
  LDX cs_start_ptr+2
  STX checksum_curr_ptr+2

  LDZ #00
checksum_loop:
checksum_curr_ptr:
  ADDZ $0000
  INC checksum_curr_ptr+2
  BNE cs_ptr_inc_done
  INC checksum_curr_ptr+1
cs_ptr_inc_done:
  LDX checksum_curr_ptr+1
  CMPX cs_end_ptr+1
  BNE checksum_loop
  LDX checksum_curr_ptr+2
  CMPX cs_end_ptr+2
  BNE checksum_loop
  OUT3 Z
  RTS

cs_start_ptr:
LDX cs_start

cs_end_ptr:
LDX cs_end






