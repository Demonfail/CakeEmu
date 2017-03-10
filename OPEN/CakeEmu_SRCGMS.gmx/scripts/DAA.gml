///DAA();
gml_pragma("forceinline");

var s = REG[Reg.A];
if(GBFlagGet(FMask.N)) {
    if(GBFlagGet(FMask.H)) { s  = (s - $06) & $FF; }
    if(GBFlagGet(FMask.C)) { s -= $60; }
}else{
    if(GBFlagGet(FMask.H) || (s & $F) > 9) { s += $06; }
    if(GBFlagGet(FMask.C) || (s > $9F))    { s += $60; }
}
GBFlagClear(FMask.H);

if(s) { 
    GBFlagClear(FMask.Z); 
}else{
    GBFlagSet(FMask.Z);
}
if(s >= $100) {
    GBFlagSet(FMask.C);
}
REG[Reg.A] = ( s & $FF);

REG[Reg.M] = 1;
REG[Reg.T] = 4;
