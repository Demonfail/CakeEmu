///ADDHLrr_xy(reg_x, reg_y);
gml_pragma("forceinline");

var hl = (REG[Reg.H] << 8) + REG[Reg.L];
    hl+= (REG[Reg.B] << 8) + REG[Reg.C];
    
if(hl > $FFFF) {
    REG[Reg.F] |= $10;
}else{
    REG[Reg.F] &= $EF;
}
REG[Reg.H] = (hl >> 8) & $FF;
REG[Reg.L] = (hl & $FF);
REG[Reg.M] = 3;
REG[Reg.T] = 12;
