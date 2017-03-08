///LDrrnn_xy(reg_x, reg_y);
gml_pragma("forceinline");

REG[argument1] = ReadByte(PC); PC++;
REG[argument0] = ReadByte(PC); PC++;
REG[Reg.M] = 3;
REG[Reg.T] = 12;
