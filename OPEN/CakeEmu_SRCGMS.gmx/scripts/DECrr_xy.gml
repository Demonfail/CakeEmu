///DECrr_xy(reg_x, reg_y);

REG[argument1] = (REG[argument1] - 1) & $FF;
if(REG[argument1] == 255) {
    REG[argument0] = (REG[argument0] - 1) & $FF;
}
REG[Reg.M] = 1;
REG[Reg.T] = 4;
