///RETZ();
gml_pragma("forceinline");

REG[Reg.M] = 1;
REG[Reg.T] = 4;
if((REG[Reg.F] & $80) == $80) {
    PC = ReadWord(SP);
    SP += 2;
    
    REG[Reg.M] = 3;
    REG[Reg.T] = 12;
}
