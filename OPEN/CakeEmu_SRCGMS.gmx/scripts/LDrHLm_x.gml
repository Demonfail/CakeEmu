///LDrHLm_x(reg_x);
gml_pragma("forceinline");

REG[argument0] = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
