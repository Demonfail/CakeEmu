///LDArrm_xy(reg_x, reg_y);

REG[Reg.A] = ReadByte((REG[argument0] << 8) + REG[argument1]);
REG[Reg.M] = 2;
REG[Reg.T] = 8;
