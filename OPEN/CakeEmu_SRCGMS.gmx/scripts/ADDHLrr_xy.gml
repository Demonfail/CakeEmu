///ADDHLrr_xy(reg_x, reg_y);
gml_pragma("forceinline");

var dest   = GBCombind(Reg.H, Reg.L)
var value  = GBCombind(Reg.B, Reg.C);
var result = dest + value; 

if(!(result & $FFFF0000)){
    GBFlagClear(FMask.C);
}else{
    GBFlagSet(FMask.C);
}

result = result & $FFFF;
REG[Reg.H] = (result & $FF00) >> 8;
REG[Reg.L] = (result & $FF);

if(((result & $0F) + (value & $0F)) > $0F) {
    GBFlagSet(FMask.H);
}else{
    GBFlagClear(FMask.H);
}

GBFlagClear(FMask.N);

REG[Reg.M] = 3;
REG[Reg.T] = 12;
