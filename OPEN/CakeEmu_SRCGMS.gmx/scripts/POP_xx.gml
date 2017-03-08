///POP_xx(reg_x, reg_y);
gml_pragma("forceinline");

REG[argument1] = ReadByte(SP); SP++;
REG[argument0] = ReadByte(SP); SP++;
REG[Reg.M] = 3;
REG[Reg.T] = 12;
