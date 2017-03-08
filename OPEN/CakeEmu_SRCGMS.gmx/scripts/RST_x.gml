///RST_h(hex);
gml_pragma("forceinline");

SREG[Reg.A] = REG[Reg.A];
SREG[Reg.B] = REG[Reg.B];
SREG[Reg.C] = REG[Reg.C];
SREG[Reg.D] = REG[Reg.D];
SREG[Reg.E] = REG[Reg.E];
SREG[Reg.F] = REG[Reg.F];
SREG[Reg.H] = REG[Reg.H];
SREG[Reg.L] = REG[Reg.L];

SP -= 2;

WriteWord(SP, PC);

PC = argument0;

REG[Reg.M] = 3;
REG[Reg.T] = 12;
