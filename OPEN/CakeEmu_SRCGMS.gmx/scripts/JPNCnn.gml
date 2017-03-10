///JPNCnn();
gml_pragma("forceinline");

if(GBFlagGet(FMask.C)) {    
    PC += 2;
    REG[Reg.M] = 3;
    REG[Reg.T] = 12;
}else{
    PC = ReadWord(PC);
    REG[Reg.M] = 4;
    REG[Reg.T] = 16;
}
