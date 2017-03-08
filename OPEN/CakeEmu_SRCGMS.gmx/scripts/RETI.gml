///RETI();
gml_pragma("forceinline");

IME = true;

REG[Reg.A] = SREG[Reg.A];
REG[Reg.B] = SREG[Reg.B];
REG[Reg.C] = SREG[Reg.C];
REG[Reg.D] = SREG[Reg.D];
REG[Reg.E] = SREG[Reg.E];
REG[Reg.F] = SREG[Reg.F];
REG[Reg.H] = SREG[Reg.H];
REG[Reg.L] = SREG[Reg.L];

PC = ReadWord(SP);
SP += 2;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
