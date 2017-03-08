///PUSH_xx(reg_x, reg_y);
gml_pragma("forceinline");

SP--; WriteByte(SP, REG[argument0]);
SP--; WriteByte(SP, REG[argument1]);
REG[Reg.M] = 3;
REG[Reg.T] = 12;
