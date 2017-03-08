///ADDr_x(reg_x);
gml_pragma("forceinline");

var a = REG[Reg.A];
REG[Reg.A] += REG[argument0];

if(REG[Reg.A] > $FF) { REG[Reg.F] = $10; }else{ REG[Reg.F] = $0; }
REG[Reg.A] &= $FF;

if(!REG[Reg.A]) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ REG[argument0] ^ a) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
