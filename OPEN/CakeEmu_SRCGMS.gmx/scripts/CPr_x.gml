///CPr_x(reg_x);
gml_pragma("forceinline");

var i =  REG[Reg.A];
    i -= REG[argument0];
    
REG[Reg.F] = ternary(i < 0, $50, $40);
i &= 255;

if(!i) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ REG[argument0] ^ i) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
