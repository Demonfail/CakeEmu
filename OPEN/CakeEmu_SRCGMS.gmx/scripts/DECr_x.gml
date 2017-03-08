///DECr_x(reg_x);
gml_pragma("forceinline");

REG[argument0] = (REG[argument0] - 1) & $FF;
if(REG[argument0]) {
    REG[Reg.F] = 0;
}else{
    REG[Reg.F] = $80;
}
REG[Reg.M] = 1;
REG[Reg.T] = 4;
