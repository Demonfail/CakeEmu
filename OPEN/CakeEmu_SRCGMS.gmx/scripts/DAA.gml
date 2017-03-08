///DAA();
gml_pragma("forceinline");

var a = REG[Reg.A];
if((REG[Reg.F] & $20) || ((REG[Reg.A] & 15) > 9)) {
    REG[Reg.A] += 6;
}
REG[Reg.F] &= $EF;

if((REG[Reg.F] & $20) || (a > $99)) {
    REG[Reg.A] += $60;
    REG[Reg.F] |= $10;
}
REG[Reg.M] = 1;
REG[Reg.T] = 4;
