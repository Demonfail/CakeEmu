///ANDn();
gml_pragma("forceinline");

REG[Reg.A] &= ReadByte(PC); PC++;
REG[Reg.A] &= $FF;
REG[Reg.F] = ternary(REG[Reg.A], 0, $80);
REG[Reg.M] = 1;
REG[Reg.T] = 4;
