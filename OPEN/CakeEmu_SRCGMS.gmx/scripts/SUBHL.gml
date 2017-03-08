///SUBHL();
gml_pragma("forceinline");


var a = REG[Reg.A];
var m = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);
REG[Reg.A] -= m;

REG[Reg.F] = ternary(REG[Reg.A] < 0, $50, $40);
REG[Reg.A] &= $FF;

if(!REG[Reg.A]) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ m ^ a) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 1;
REG[Reg.T] = 4;
