
start:
  LDX #d0
  STX loadins
  LDX #20
  STX p2

loadins:
  LDX $0000

end
JMP end
