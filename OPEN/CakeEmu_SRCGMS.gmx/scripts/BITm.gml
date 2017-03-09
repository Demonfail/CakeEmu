///BITm(Ind);
gml_pragma("forceinline");

REG[Reg.F] &= $1F;
REG[Reg.F] |= $20;
REG[Reg.F]  = ternary((ReadByte((REG[Reg.H] << 8) + REG[Reg.L]) & argument0), 0, $80);
REG[Reg.M]  = 3;
REG[Reg.T]  = 12;
