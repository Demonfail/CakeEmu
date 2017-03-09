///CPHL();
gml_pragma("forceinline");

var m =  ReadByte(PC); PC++;
var i =  REG[Reg.A];
    i -= m;
    
REG[Reg.F] = ternary(i < 0, $50, $40);
i &= 255;

if(!i) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ m ^ i) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
