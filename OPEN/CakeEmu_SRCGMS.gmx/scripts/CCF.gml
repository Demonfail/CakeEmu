///CCF();
gml_pragma("forceinline");

if(GBFlagGet(FMask.C)) {
    GBFlagClear(FMask.C);
}else{
    GBFlagSet(FMask.C);
}
GBFlagClear(FMask.N | FMask.H);
