///RET();
gml_pragma("forceinline");

PC = ReadWord(SP);
SP += 2;
REG[Reg.M] = 3;
REG[Reg.T] = 12;
