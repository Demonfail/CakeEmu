///BITx(reg_x, Ind);
gml_pragma("forceinline");

REG[Reg.F] &= $1F;
REG[Reg.F] |= $20;
REG[Reg.F]  = ternary(REG[argument0] & argument1, 0, $80);
REG[Reg.M]  = 2;
REG[Reg.T]  = 8;
