///CPL();
gml_pragma("forceinline");

REG[Reg.A] ^= $ff;
if(REG[Reg.A]) {
    REG[Reg.F] = $00;
}else{
    REG[Reg.F] = $80;
}
REG[Reg.M] = 1;
REG[Reg.T] = 4;
