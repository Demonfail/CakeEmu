///INCr_x(reg_x);
gml_pragma("forceinline");

var r = REG[argument0];

if((r & $0F) == $0F) {
    GBFlagSet(FMask.H);
}else{
    GBFlagClear(FMask.H);
}
r = ((r+1) & $FF);
if(r == 0) {
    GBFlagSet(FMask.Z);   
}else{
    GBFlagClear(FMask.Z);
}
GBFlagClear(FMask.N);

REG[argument0] = r;
REG[Reg.M] = 1;
REG[Reg.T] = 4;

