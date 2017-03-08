///SBCr_x(reg_x);
gml_pragma("forceinline");

var a = REG[Reg.A];

REG[Reg.A] -= REG[argument0];

REG[Reg.A] -= ternary(REG[Reg.F] & $10, 1, 0);
REG[Reg.F] =  ternary(REG[Reg.A] < 0, $50, $40);
REG[Reg.A] &= $FF;

if(!REG[Reg.A]) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ REG[argument0] ^ a) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
