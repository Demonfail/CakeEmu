///RLA();
gml_pragma("forceinline");

var carry;
if(GBFlagGet(FMask.C)) { carry = 1; } else { carry = 0; }

if(REG[Reg.A] & $80) {
    GBFlagSet(FMask.C);
}else{
    GBFlagClear(FMask.C);
}

REG[Reg.A]  = REG[Reg.A] << 1;
REG[Reg.A] += carry;
REG[Reg.M] = 1;
REG[Reg.T] = 4;

GBFlagClear(FMask.N | FMask.Z | FMask.H);
