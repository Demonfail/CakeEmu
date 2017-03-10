///CALLCnn();
gml_pragma("forceinline");

if(!GBFlagGet(FMask.C)) {    
    PC += 2;
    REG[Reg.M] = 3;
    REG[Reg.T] = 12;
}else{
    SP -= 2;
    WriteWord(SP, PC+2);
    PC = ReadWord(PC);
    
    REG[Reg.M] = 5;
    REG[Reg.T] = 20;
}
