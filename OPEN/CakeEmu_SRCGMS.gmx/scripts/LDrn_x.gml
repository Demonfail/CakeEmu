///LDrn_x(reg_x);
gml_pragma("forceinline");

REG[argument0] = ReadByte(PC); PC++;
REG[Reg.M] = 2;
REG[Reg.T] = 8;
