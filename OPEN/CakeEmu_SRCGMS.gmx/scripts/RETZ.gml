///RETZ();
gml_pragma("forceinline");

if(!GBFlagGet(FMask.Z)) {
    REG[Reg.M] = 2;
    REG[Reg.T] = 8;
}else{
    PC = ReadWord(SP); SP += 2;
    REG[Reg.M] = 5;
    REG[Reg.T] = 20;
}
