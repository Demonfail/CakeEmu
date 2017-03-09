///RESx(reg_x, ind);
gml_pragma("forceinline");

REG[argument0] &= ($FF - argument1);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
