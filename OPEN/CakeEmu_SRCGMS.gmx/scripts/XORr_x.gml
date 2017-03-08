///XORr_x(reg_x);
gml_pragma("forceinline");

REG[Reg.A] ^= REG[argument0];
REG[Reg.A] &= $FF;
REG[Reg.F] = ternary(REG[Reg.A], 0, $80);
REG[Reg.M] = 1;
REG[Reg.T] = 4;
