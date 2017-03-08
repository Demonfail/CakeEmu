///XORr_x(reg_x);
gml_pragma("forceinline");

REG[Reg.A] ^= ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
REG[Reg.A] &= $FF;
REG[Reg.F] = ternary(REG[Reg.A], 0, $80);
REG[Reg.M] = 1;
REG[Reg.T] = 4;
