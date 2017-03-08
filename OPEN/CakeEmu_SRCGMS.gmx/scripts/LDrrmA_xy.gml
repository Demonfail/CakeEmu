///LDrrmA_xy(reg_x, reg_y);
gml_pragma("forceinline");

WriteByte((REG[argument0] << 8) + REG[argument1], REG[Reg.A]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
