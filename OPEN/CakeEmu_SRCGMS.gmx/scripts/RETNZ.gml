///RETNZ();
gml_pragma("forceinline");

REG[Reg.M] = 1;
REG[Reg.T] = 4;
if((REG[Reg.F] & $80) == $00) {
    PC = ReadWord(SP);
    SP += 2;
    REG[Reg.M] += 2;
    REG[Reg.T] += 8;
}

