///ADDHL();
gml_pragma("forceinline");

var a = REG[Reg.A];
var m = ReadByte((REG[Reg.H] << 8) + REG[Reg.L]);

REG[Reg.A] += m;

if(REG[Reg.A] > $FF) { REG[Reg.F] = $10; }else{ REG[Reg.F] = $0; }
REG[Reg.A] &= $FF;

if(!REG[Reg.A]) {
    REG[Reg.F] |= $80;
}

if((REG[Reg.A] ^ m ^ a) & $10) {
    REG[Reg.F] |= $20;
}

REG[Reg.M] = 2;
REG[Reg.T] = 8;
