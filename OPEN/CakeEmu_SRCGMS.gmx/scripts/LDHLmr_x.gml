///LDHLmr_x(reg_x);
gml_pragma("forceinline");

WriteByte((REG[Reg.H] << 8) + REG[Reg.L], REG[argument0]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
