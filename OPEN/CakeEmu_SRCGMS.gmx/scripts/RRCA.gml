///RRCA();
gml_pragma("forceinline");

var carry = REG[Reg.A] & $01;
if(carry) {
    GBFlagSet(FMask.C);
}else{
    GBFlagClear(FMask.C);
}
REG[Reg.A] = REG[Reg.A] >> 1;
if(carry) { REG[Reg.A] |= $80; }

GBFlagClear(FMask.N | FMask.Z | FMask.H);

REG[Reg.M] = 1;
REG[Reg.T] = 4;

